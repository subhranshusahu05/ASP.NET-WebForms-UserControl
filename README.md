The goal is to practice Web User Controls, C# CodeBehind, and partial page updates (AJAX using UpdatePanel).

🛠 Steps I Followed
1️⃣ Created a Web User Control (WebUserControl1.ascx)

I created a .ascx file that contains:

A TextBox to display the selected date.

An ImageButton with a calendar icon to toggle the Calendar visibility.

An ASP.NET Calendar that is initially hidden.

ScriptManager and UpdatePanel so that only the calendar part updates without refreshing the whole page.

👉 This control can be reused anywhere in the project.

2️⃣ Wrote Backend Logic for User Control (WebUserControl1.ascx.cs)

Event imgDate_Click → Toggles the Calendar visibility.

Event cldDate_SelectionChanged → Updates the TextBox with the selected date and hides the calendar.

Event cldDate_VisibleMonthChanged → Updates TextBox with the current visible month (example feature).

Clear() method → Clears the TextBox, resets selected dates, and shows the current month again.

3️⃣ Created the Main Form (FinalOut.aspx)

Added Name, Email, Password input fields.

Registered and added the custom calendar control (UC1:usercalender) inside the form.

Added a Clear Button to reset the form.

4️⃣ Wrote Backend Logic for Main Form (FinalOut.aspx.cs)

When the Clear button is clicked:

Clears TextBox1 (Name), TextBox2 (Email), and TextBox3 (Password).

Calls the ucdate.Clear() method to reset the calendar user control.
