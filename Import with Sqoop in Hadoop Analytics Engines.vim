# In order for Sqoop to work connecting HiveServer2, we have to create a beeline configuration file “beeline-hs2-connection.xml”.

mkdir .beeline

cd .beeline/

vi beeline-hs2-connection.xml

<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>
<configuration>
<property>
<name>beeline.hs2.connection.user</name>
<value>hive</value>
</property>
<property>
<name>beeline.hs2.connection.password</name>
<value>hive</value>
</property>
</configuration> 
