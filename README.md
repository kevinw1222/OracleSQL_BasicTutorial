## Part 1: Installation
1. Go to https://www.oracle.com/database/technologies/appdev/xe.html:
		<ul>Click <b>Download Oracle Database XE</b></ul>
2. Try either of the following program for installation:
		<ul><b>setup.exe</b> or <b>Oracle Database 21c Express Edition.msi</b> (Prefer <b>setup.exe</b>)</ul>
		<ul><img width="693" alt="Screen Shot 2023-07-04 at 1 24 14 PM" src="https://github.com/kevinw1222/OracleSQL_BasicTutorial/assets/119633334/8efa1e9c-06e2-408a-b103-e5f7b0fa4aac"></ul>
3. You need to setup a password while the installation: (Default username has been created as SYS, SYSTEM or PDBADMIN)
		<ul><img width="562" alt="Screen Shot 2023-07-04 at 1 25 31 PM" src="https://github.com/kevinw1222/OracleSQL_BasicTutorial/assets/119633334/cf91fd8b-6f99-4848-8585-be28c30667cd"></ul>
<p>*For more detail steps, refer to: https://docs.oracle.com/en/database/oracle/oracle-database/18/xeinw/installing-oracle-database-xe.html#GUID-8A8E5F6D-F00E-40BD-B74D-A41CCC502AE9</p>

## Part 2: Demonstration
1. Click <b>Search</b> in task bar, find <b>SQL*Plus</b>;
2. Enter user-name & password to continue: (username doesn't capital sensitive)
		<ul>When login successful:</ul>
		<ul><img width="939" alt="Screen Shot 2023-07-04 at 11 44 30 AM" src="https://github.com/kevinw1222/Oracle_SQL/assets/119633334/82dad5ae-5687-4357-b067-3c86cace42e2"></ul>
3. Type <code>start</code> and drag the script file into the program:
   	<ul>Run the file: <code>lab_manipulating.sql</code>first. Because we need to generate a demo databse in this program first.</ul>
		<ul>Then run other file: <code>verify_lab_manipulating.sql</code>. Where this is the output customization for the output reuslt.</ul>
		<br>
		<ul>Syntax looks like this:</ul>
		<ul><code>SQL> start "X:\folder\sub-folder\file.sql"</code> or;</ul>
		<ul><code>SQL> start \\\folder\sub-folder\file.sql</code>(Parallels Desktop user)</ul>

## Part 3: Additional Knowledge
<p>Generally, it has several files in a demo project:
		<ul>1. is for database structure.</ul>
		<ul>2. is the file to setup specific output.</ul>
		<ul>3. is the output file where the output setup file has run.</ul>
</p>

<p>Useful Keywords:
	<ul><img width="218" alt="Screen Shot 2023-07-10 at 11 29 31 AM" src="https://github.com/kevinw1222/OracleSQL_BasicTutorial/assets/119633334/c9273957-dfe2-4c26-a33f-224b0cc07a0f"></ul>
	<ul>1. <code>SET ECHO ON/OFF</code>: This will return commands that you typed in the program, or return the command for syntax error. It helps for debugging. </ul>
 	<ul>2. <code>SET VERIFY ON/OFF</code>: This VERIFY setting controls whether or not SQL*Plus displays before and after images of each line that contains a substitution variable.</ul>
 	<ul>3. <code>SET PAGESIZE ###</code>: This will limit how many lines in a page output. If it sets too small, then the output might separated to 2 pages even the file can be create in 1 page. </ul>
	<ul>4. <code>SET LINESIZE ###</code>: This will limit a single-line size on the screen for the output. If it sets to small, then might cause a 1-line output turns into 2-line.</ul>
</p> 
<p>Ref: https://www.oreilly.com/</p>
