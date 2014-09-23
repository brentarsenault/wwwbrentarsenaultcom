<%@ Page Language="VB" %>
<%@ Import Namespace="System.Net.Mail" %>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
    	Submit.Attributes.Add ("onclick", "javascript:pageTracker._trackPageview('/OceanSpray_com/Event/News/Blueberry_Coupon/NEW_JOIN_THE_CLUB_SUBMIT');")
    	SubmitExisting.Attributes.Add ("onclick", "javascript:pageTracker._trackPageview('/OceanSpray_com/Event/News/Blueberry_Coupon/CURRENT_LOG_IN_SUBMIT');")
    	Dim mainMenu As Int32 = 4
        Dim subMenu As Int32 = 3
        
    End Sub  
    
    ' Input validation
    Private Function GetFormErrorMessages() As Generic.List(Of String)
        Dim errors As Generic.List(Of String) = New Generic.List(Of String)()
        If Not Connelly.Utility.IsValidEmail(Email.Text) Then
            errors.Add("Please enter the required information and click &ldquo;Submit.&rdquo;")
        End If
        If Not Password.Text.Equals(ConfirmPassword.Text) Then
            errors.Add("Your password and confirmation password must match.")
        End If
        Return errors
    End Function

    ' Creates a new user account
    Private Function CreateAccount(ByRef status As MembershipCreateStatus) As MembershipUser
        Dim newUser As MembershipUser = Nothing
        Dim strEmail As String = Email.Text.Trim().ToLower()
        Dim strPassword As String = Password.Text
        Try
            newUser = Membership.CreateUser(strEmail, strPassword, strEmail, "Q", "A", True, status)
            If newUser IsNot Nothing Then
                connelly.Utility.AddUserToRole(newUser.UserName, "GrapefruitClubMember")
            End If
        Catch ex As Exception
            Response.Write(ex.ToString)
            status = MembershipCreateStatus.ProviderError
        End Try
        Return newUser
    End Function

    ' Creates associated profile
    Private Function CreateProfile(ByVal userName As String) As Boolean
        Try
            Dim profile As ProfileCommon = CType(ProfileCommon.Create(userName, True), ProfileCommon)
            profile.Title = ""
            profile.FirstName = ""
            profile.LastName = ""
            profile.Address = ""
            profile.City = ""
            profile.State = ""
            profile.ZipCode = ""
            profile.Country = ""
            profile.Phone = ""
            profile.Save()
        Catch ex As Exception
            Return False
        End Try
        Return True
    End Function

    ' Custom status messages for user creation
    Private Function GetStatusMessage(ByVal status As MembershipCreateStatus) As String
        Select Case status
            Case MembershipCreateStatus.DuplicateUserName
                Return "An account for that e-mail address already exists."
            Case MembershipCreateStatus.DuplicateEmail
                Return "An account for that e-mail address already exists."
            Case MembershipCreateStatus.InvalidUserName
                Return "The e-mail address provided is invalid."
            Case MembershipCreateStatus.InvalidEmail
                Return "We do not have an account for this email address. Please try again."
            Case MembershipCreateStatus.InvalidPassword
                Dim requirement As Generic.List(Of String) = New Generic.List(Of String)()
                If Membership.MinRequiredPasswordLength > 0 Then
                    requirement.Add("be at least " + Membership.MinRequiredPasswordLength.ToString() + " characters long")
                End If
                If Membership.MinRequiredNonAlphanumericCharacters > 0 Then
                    requirement.Add("have " + Membership.MinRequiredNonAlphanumericCharacters.ToString() + " non-alphanumeric characters")
                End If
                Return "The password must " + String.Join(" and ", requirement.ToArray()) + "."
            Case MembershipCreateStatus.InvalidAnswer
                Return "The password retrieval answer provided is invalid."
            Case MembershipCreateStatus.InvalidQuestion
                Return "The password retrieval question provided is invalid."
            Case MembershipCreateStatus.ProviderError
                Response.Redirect("error.aspx")
                Return "The authentication provider returned an error. Please verify your entry and try again."
            Case MembershipCreateStatus.UserRejected
                Return "The user creation request has been canceled. Please verify your entry and try again."
            Case Else
                Return "An unknown error occurred. Please verify your entry and try again."
        End Select
    End Function

    ' E-mail message
    Private Function CreateEmailMessage() As String
        Dim buffer As StringBuilder = New StringBuilder()
        buffer.Append("" + "~")
        buffer.Append("" + "~")
        buffer.Append("" + "~")
        buffer.Append("" + "~")
        buffer.Append("" + "~")
        buffer.Append("" + "~")
        buffer.Append("" + "~")
        buffer.Append("" + "~")
        buffer.Append("" + "~")
        buffer.Append(Email.Text.Trim() + "~")
        buffer.Append("e-mail~")
        buffer.Append("Grapefruit Club~")
        buffer.Append("~Public~")
        Return buffer.ToString()
    End Function

    ''' <summary>
    ''' Click event to handle new member signups.
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    ''' <remarks></remarks>
    Protected Sub Submit_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim errMessages As Generic.List(Of String) = GetFormErrorMessages()
        If errMessages.Count() = 0 Then
            Dim status As MembershipCreateStatus = Nothing
            Dim newUser As MembershipUser = CreateAccount(status)
            If status = MembershipCreateStatus.Success Then
                If CreateProfile(newUser.UserName) Then
                    ' Send email
                    'Dim mm As MailMessage = New MailMessage(Email.Text.Trim(), "jcarreiro@oceanspray.com")
                    'mm.Subject = Email.Text.Trim()
                    'mm.Body = CreateEmailMessage()
                    'mm.IsBodyHtml = False
                    'Dim smtp As SmtpClient = New SmtpClient()
                    'smtp.Send(mm)
                   ' Done
                    Page.Response.Cookies.Add(FormsAuthentication.GetAuthCookie(newUser.UserName, True))
                    'Arnold - Replace URL here, this goes to coupon page
                    Response.Redirect("/recipes/CranberryClub/arnold_blueberry_thankyou.aspx", False)
                Else
                    Membership.DeleteUser(newUser.UserName)
                    errMessages.Add("We can't save your profile data. Please verify your entry and try again.")
                End If
            Else
                errMessages.Add(GetStatusMessage(status))
                If status = MembershipCreateStatus.DuplicateEmail OrElse status = MembershipCreateStatus.DuplicateUserName Then
                    errMessages.Add("Please login above to receive your coupon.<br>")
                    Submit.Visible = True
                End If
            End If
        End If
        'FormMessage.Text = "<ul><li>" + String.Join("</li><li>", errMessages.ToArray()) + "</li></ul>"
        FormMessage.InnerHtml = "<br>" & String.Join("<br/><br />&bull; ", errMessages.ToArray()) & "<br>"
    End Sub
    
    ''' <summary>
    ''' Click event to handle existing member validation.
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    ''' <remarks></remarks>
    Protected Sub SubmitExisting_Click(ByVal sender As Object, ByVal e As System.EventArgs)
    	If OceanSpray.CranberryClub.MemberExistenceByEmail(EmailExisting.Text) Then
                'Page.Response.Cookies.Add(FormsAuthentication.GetAuthCookie(EmailConfirmExisting.Text, True))
                'Arnold - Replace URL here, this goes to coupon page
                Response.Redirect("http://www.redplum.com/pages/Viewoffer.aspx?id=1582142&frm=0&pl=true", False)
            Else
                'tblEntryExisting.Attributes.Add("style", "display:none")
                FormMessageExisting.InnerHtml = "Sorry, there is no member information for this email. Please use the sign up form below to become a member.<br><br>"
       End If
      '  Else
            'FormMessageExisting.InnerHtml = "The Email and Confirmation Email must match."
    End Sub
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Blueberry Recipes</title>
	<meta name="description" content="From cocktails to cookies, sauces to side dishes, the Ocean Spray Test Kitchen is always cooking up new ways to add zip to any meal." />
    
    <link href="/css/arn-blueberry.css" type="text/css" rel="stylesheet" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/skin.css" />
	<link rel="stylesheet" type="text/css" href="/css/jquery.fancybox-1.3.1.css" />
	
	
    
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="background: #b8d9ed;">
<form method="POST" runat="server">
    <div id="main-pop">
		<div id="join">
		<img src="/images/blueberry/headline-club.jpg" alt="Join the club" height="20" width="160" border="0" />
		<br />Get great coupons, yummy recipes, <br />entertaining tips and more.
		<fieldset>
			<div ID="FormMessage" style="text-align: left; padding:10px; font-size:9px;color:#ff0000;font-weight:bold;" runat="server"><p></p></div>
			<div class="row">
				<div class="left" style="padding-top: 6px;">Email</div>
				<div class="right"><asp:TextBox id="Email" runat="server" style="width: 150px;" /></div>
			</div>
			<div class="row">
				<div class="left">Create Password</div>
				<div class="right"><asp:TextBox id="Password" TextMode="Password" runat="server" style="width: 150px;" /></div>
			</div>
			<div class="row">
				<div class="left">Confirm Password</div>
				<div class="right"><asp:TextBox id="ConfirmPassword" TextMode="Password" runat="server" style="width: 150px;" />	</div>
			</div>
			<div class="row">
				<asp:LinkButton ID="Submit" runat="server" ValidationGroup="ExistingMemberValidation" Text="Submit" OnClick="Submit_Click"><img src="/images/blueberry/btn_submit.jpg" border="0" /></asp:LinkButton>
			</div>
			</fieldset>
		</div>
		<div id="dotted">
		</div>
		<div id="member">
		<img src="/images/blueberry/headline-member.jpg" alt="Already a Member?" height="20" width="160" border="0" />
		<br />Simply enter your email so we can <br />validate your membership.
		<br />
		<br />
		<fieldset>
			<div ID="FormMessageExisting" style="text-align: left; padding:0 10px;font-size:9px;color:#ff0000;font-weight:bold" runat="server"><p></p></div> 
			<div class="row">
				<div class="left" style="padding-top: 6px;">Email</div>
				<div class="right"><asp:TextBox id="EmailExisting" runat="server" style="width: 150px;" /></div>
			</div>
			<div class="row">
				<asp:LinkButton ID="SubmitExisting" runat="server" ValidationGroup="ExistingMemberValidation" Text="Submit" OnClick="SubmitExisting_Click"><img src="/images/blueberry/btn_submit.jpg" border="0" /></asp:LinkButton>
			</div>
			</fieldset>
		</div>
		</div>
	</div>
</form>
    <script type="text/javascript">
		var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
		document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
	</script>
	<script type="text/javascript">
		var pageTracker = _gat._getTracker("UA-4210218-3");
		pageTracker._initData();
		pageTracker._trackPageview('/OceanSpray_com/Page/News/Blueberry_Coupon/Coupon_Pop_Up');
	</script>
</body>
</html>
