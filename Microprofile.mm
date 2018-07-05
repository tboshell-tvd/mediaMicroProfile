<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1528785909806" ID="ID_697242769" MODIFIED="1530092470026" STYLE="bubble" TEXT="Eclipse Microprofile">
<edge STYLE="sharp_bezier"/>
<node COLOR="#ff0000" CREATED="1529320371680" HGAP="16" ID="ID_464878606" MODIFIED="1530623192751" POSITION="right" STYLE="bubble" TEXT="micropofile sub-projects" VSHIFT="4">
<node CREATED="1529667860615" ID="ID_423503958" MODIFIED="1530092527898" TEXT="CDI">
<node CREATED="1529667886227" ID="ID_574547942" MODIFIED="1530092527898" TEXT="Allows RestClients to be injected"/>
<node CREATED="1529668699974" ID="ID_508687154" MODIFIED="1530092527898" TEXT="A quick, natural way for clients to connect to defined rest services"/>
<node CREATED="1529668483884" ID="ID_1226476962" MODIFIED="1530092527898" TEXT="Uses JaxRS2.0">
<node CREATED="1529668493784" ID="ID_825062068" MODIFIED="1530092527898" TEXT="https://jcp.org/en/jsr/detail?id=339"/>
</node>
<node CREATED="1529668064597" ID="ID_778299082" MODIFIED="1530092527898" TEXT="https://github.com/eclipse/microprofile-rest-client/blob/microprofile-rest-client-1.1/spec/src/main/asciidoc/cdi.asciidoc"/>
<node CREATED="1529668582927" ID="ID_308609612" MODIFIED="1530092527899" TEXT="https://microprofile.io/project/eclipse/microprofile-rest-client"/>
<node CREATED="1529667920927" ID="ID_1843511478" MODIFIED="1530092527899" TEXT="@RegisterRestClient">
<node CREATED="1529667941522" ID="ID_1536816049" MODIFIED="1530092527899" TEXT="an Interface defintion"/>
<node CREATED="1529667961486" ID="ID_232466932" MODIFIED="1530092527899" TEXT="Then inject into controller, or applicationScope class"/>
<node CREATED="1529667986535" ID="ID_1545010326" MODIFIED="1530092527899" TEXT="@RestClient"/>
<node CREATED="1529668082801" ID="ID_1972117849" MODIFIED="1530092527899" TEXT="The runtime will create a CDI Bean"/>
</node>
<node CREATED="1529675947531" ID="ID_559946693" MODIFIED="1530092527899" TEXT="https://openliberty.io/guides/microprofile-rest-client.html"/>
</node>
<node CREATED="1529320379102" ID="ID_45596168" MODIFIED="1530176185560" TEXT="Config:">
<node CREATED="1529320426207" ID="ID_1406208832" MODIFIED="1529320429128" TEXT="https://microprofile.io/project/eclipse/microprofile-config"/>
<node CREATED="1529320444551" ID="ID_837145994" MODIFIED="1529320447729" TEXT="org.eclipse.microprofile.config.inject.ConfigProperty.class"/>
<node CREATED="1530186837952" ID="ID_99269762" MODIFIED="1530186840525" TEXT="https://openliberty.io/guides/microprofile-config-intro.html"/>
<node CREATED="1530186887446" ID="ID_478640313" MODIFIED="1530186889501" TEXT="MicroProfile Config uses Contexts and Dependency Injection (CDI) to inject configuration property values directly into an application without requiring user code to retrieve them. The injected values are defined as static because they are set only at application startup."/>
<node CREATED="1529657657251" ID="ID_781969719" MODIFIED="1529657660927" TEXT="Implementation">
<node CREATED="1529657674698" ID="ID_913079151" MODIFIED="1529657684319" TEXT="Apache Geronimo Config"/>
<node CREATED="1529657685437" ID="ID_1357959048" MODIFIED="1529657692486" TEXT="WebSphere Liberty"/>
<node CREATED="1529657693325" ID="ID_227981528" MODIFIED="1529657708896" TEXT="Payara Server &amp; Payara Micro"/>
<node CREATED="1529657710283" ID="ID_1689924232" MODIFIED="1529657715262" TEXT="Wildfly Swarm"/>
</node>
<node CREATED="1529657784152" ID="ID_107166269" MODIFIED="1529657793786" TEXT="ConfigSources:">
<node CREATED="1529657795614" ID="ID_1030917463" MODIFIED="1529657801767" TEXT="System.getProperties()"/>
<node CREATED="1529657803269" ID="ID_1392437906" MODIFIED="1529657809826" TEXT="System.getenv();"/>
<node CREATED="1529657810707" ID="ID_1040977723" MODIFIED="1529657828517" TEXT="META-INF/microprofile-config.properties"/>
<node CREATED="1529659790237" ID="ID_1635360529" MODIFIED="1529659796789" TEXT="Custom Configs">
<node CREATED="1529659799248" ID="ID_621219819" MODIFIED="1529659811280" TEXT="implement ConfigSource"/>
<node CREATED="1529659816091" ID="ID_740163518" MODIFIED="1529659824741" TEXT="set the ordinal">
<node CREATED="1529659830956" ID="ID_1453091648" MODIFIED="1529659837471" TEXT="Higher value prio"/>
</node>
<node CREATED="1529659839729" ID="ID_564311073" MODIFIED="1529659876181" TEXT="register qualified name @ /META-INF/services/org.eclipse.microprofile.config.spi.ConfigSource"/>
</node>
</node>
<node CREATED="1529657925582" ID="ID_185537737" MODIFIED="1529657930491" TEXT="example">
<node CREATED="1529657934186" ID="ID_395686977" MODIFIED="1529657935967" TEXT="https://microprofile.io/project/eclipse/microprofile-config/spec/src/main/asciidoc/configexamples.asciidoc"/>
<node CREATED="1529657936894" ID="ID_1152373001" MODIFIED="1529657971912" TEXT="@Inject  @ConfigProperty(name=&quot;someprop.key&quot;)"/>
</node>
<node CREATED="1529320775280" ID="ID_544212276" MODIFIED="1529667088908" TEXT="Config and ConfigProvider">
<node CREATED="1529320818328" ID="ID_673356998" MODIFIED="1529320820526" TEXT="Config cfg = ConfigProvider.getConfig();  *   String archiveUrl = cfg.getString(&quot;my.project.archive.endpoint&quot;, String.class);"/>
</node>
</node>
<node CREATED="1529662410412" ID="ID_413494347" MODIFIED="1530622947689" TEXT="metrics">
<node CREATED="1529667059827" ID="ID_1644621075" MODIFIED="1529667067285" TEXT="A key goal of the specification was to provide HTTP endpoints in Prometheus format (as well as JSON)"/>
<node CREATED="1529662518125" ID="ID_315638563" MODIFIED="1529667073339" TEXT="3 Types of Metadata scopes:">
<node CREATED="1529662528356" ID="ID_1889906019" MODIFIED="1529662530248" TEXT="base">
<node CREATED="1529662579860" ID="ID_1272419116" MODIFIED="1529662582908" TEXT="required"/>
<node CREATED="1529663287919" ID="ID_289400950" MODIFIED="1529663312249" TEXT="ex: Heap, Memory, threads"/>
</node>
<node CREATED="1529662531007" ID="ID_291215511" MODIFIED="1529662532987" TEXT="vendor">
<node CREATED="1529662585236" ID="ID_1350539978" MODIFIED="1529662587422" TEXT="optional"/>
</node>
<node CREATED="1529662533782" ID="ID_317352766" MODIFIED="1529662536389" TEXT="application">
<node CREATED="1529662589513" ID="ID_1075962091" MODIFIED="1529662592342" TEXT="optional"/>
<node CREATED="1529663384077" ID="ID_1567131670" MODIFIED="1529663389071" TEXT="tags:">
<node CREATED="1529663397125" ID="ID_245474035" MODIFIED="1529663400609" TEXT="@Counted"/>
<node CREATED="1529663401742" ID="ID_124815607" MODIFIED="1529663450839" TEXT="@Gauge"/>
<node CREATED="1529663427322" ID="ID_455553818" MODIFIED="1529663469484" TEXT="@Metered"/>
<node CREATED="1529663470501" ID="ID_1872511924" MODIFIED="1529663475073" TEXT="@Metric"/>
<node CREATED="1529663475682" ID="ID_145783640" MODIFIED="1529663482940" TEXT="@Timed"/>
</node>
</node>
</node>
<node CREATED="1529662473700" ID="ID_1407710196" MODIFIED="1529662475962" TEXT="https://github.com/eclipse/microprofile-metrics"/>
<node CREATED="1529662482219" ID="ID_1161142337" MODIFIED="1529662484405" TEXT="https://github.com/eclipse/microprofile-metrics/releases"/>
<node CREATED="1529663114398" ID="ID_1814756434" MODIFIED="1529663117550" TEXT="Monitoring data (&quot;Telemetry&quot;)"/>
<node CREATED="1529666249828" ID="ID_722602832" MODIFIED="1529666255034" TEXT="Metric Registries">
<node CREATED="1529666283514" ID="ID_1718463686" MODIFIED="1529666298770" TEXT="maintains a collection of metrics along with their metadata"/>
<node CREATED="1529666312993" ID="ID_998875988" MODIFIED="1529666321312" TEXT="Singleton of MetricRegistry  per scope">
<node CREATED="1529666325839" ID="ID_1595234882" MODIFIED="1529666334089" TEXT="application">
<node CREATED="1529666362690" ID="ID_670750437" MODIFIED="1529666366460" TEXT="*default"/>
</node>
<node CREATED="1529666336307" ID="ID_484741264" MODIFIED="1529666338730" TEXT="vendor"/>
<node CREATED="1529666339410" ID="ID_211689265" MODIFIED="1529666343086" TEXT="base"/>
</node>
<node CREATED="1529666405277" ID="ID_171283381" MODIFIED="1529666407205" TEXT="@RegistryType(type=MetricRegistry.Type.APPLICATION) "/>
</node>
<node CREATED="1529666464131" ID="ID_1227309028" MODIFIED="1529666466089" TEXT="https://github.com/unitsofmeasurement"/>
<node CREATED="1529666774568" ID="ID_1904624829" MODIFIED="1529666775977" TEXT="https://github.com/dropwizard/metrics/tree/v3.2.3">
<node CREATED="1529666781562" ID="ID_512583186" MODIFIED="1529666783035" TEXT="https://metrics.dropwizard.io/4.0.0/"/>
</node>
<node CREATED="1529666484449" ID="ID_648980435" MODIFIED="1529666485367" TEXT="http://metrics20.org/spec/"/>
<node CREATED="1529666573442" ID="ID_150577618" MODIFIED="1529666581119" TEXT="Access via RestAPI">
<node CREATED="1529666582840" ID="ID_567126606" MODIFIED="1529666585447" TEXT="/metrics"/>
<node CREATED="1529666586057" ID="ID_448177158" MODIFIED="1529666587578" TEXT="json"/>
</node>
</node>
<node CREATED="1529670591787" FOLDED="true" HGAP="215" ID="ID_361572161" MODIFIED="1530690666060" TEXT="Fault-Tolerance" VSHIFT="-15">
<node CREATED="1529670606549" ID="ID_247498131" MODIFIED="1529670608763" TEXT="https://microprofile.io/project/eclipse/microprofile-fault-tolerance"/>
<node CREATED="1529670703935" ID="ID_493841792" MODIFIED="1529670706565" TEXT="to build fault tolerant micro services"/>
<node CREATED="1529671912601" ID="ID_86380154" MODIFIED="1529671914138" TEXT="separate execution logic from execution"/>
<node CREATED="1529671972353" ID="ID_1539259593" MODIFIED="1529671973896" TEXT="https://github.com/eclipse/microprofile-fault-tolerance/blob/master/README.adoc"/>
<node CREATED="1529671982032" ID="ID_614972402" MODIFIED="1529671983322" TEXT="https://microprofile.io/project/eclipse/microprofile-fault-tolerance"/>
<node CREATED="1529671061313" ID="ID_818784337" MODIFIED="1529671069336" TEXT="- Define a Failure Scenario"/>
<node CREATED="1529670637179" ID="ID_1014346694" MODIFIED="1529670664429" TEXT="Types">
<node CREATED="1529670638908" ID="ID_1083039440" MODIFIED="1529670654391" TEXT="TimeOut">
<node CREATED="1529671503673" ID="ID_1239568892" MODIFIED="1529671514293" TEXT="@TimeOut"/>
</node>
<node CREATED="1529670645314" ID="ID_1666863829" MODIFIED="1529670645314" TEXT="RetryPolicy">
<node CREATED="1529671453412" ID="ID_1068204878" MODIFIED="1529671458901" TEXT="@Retry"/>
</node>
<node CREATED="1529670671096" ID="ID_1504115256" MODIFIED="1529670673988" TEXT="FallBack">
<node CREATED="1529671627031" ID="ID_1208808553" MODIFIED="1529671632124" TEXT="@Fallback"/>
</node>
<node CREATED="1529670675642" ID="ID_1640468425" MODIFIED="1529670678297" TEXT="Bulkhead"/>
<node CREATED="1529670681999" ID="ID_1373746416" MODIFIED="1529670686577" TEXT="CircuitBreaker">
<node CREATED="1529676054213" ID="ID_919368772" MODIFIED="1529676056654" TEXT="https://openliberty.io/guides/circuit-breaker.html"/>
</node>
</node>
<node CREATED="1529671117525" ID="ID_681106531" MODIFIED="1529671122728" TEXT="Requirements">
<node CREATED="1529671128383" ID="ID_1149462966" MODIFIED="1529671132165" TEXT="Loose Coupling"/>
<node CREATED="1529671133026" ID="ID_112817240" MODIFIED="1529671152889" TEXT="Configurable Failure Handling Strategy"/>
<node CREATED="1529671156848" ID="ID_217172594" MODIFIED="1529671178799" TEXT="Synchronious and ASync execution"/>
<node CREATED="1529671237624" ID="ID_1199311159" MODIFIED="1529671247043" TEXT="3rd Party Synch Integration"/>
<node CREATED="1529671314865" ID="ID_1384813497" MODIFIED="1529671318338" TEXT="immutable failure handling policy configuration"/>
</node>
<node CREATED="1529671365873" ID="ID_719735571" MODIFIED="1529671374478" TEXT="Libraries for failsafe:">
<node CREATED="1529671376415" ID="ID_1495289654" MODIFIED="1529671382799" TEXT="Hystrix"/>
<node CREATED="1529671383985" ID="ID_1968540215" MODIFIED="1529671386704" TEXT="Failsafe"/>
</node>
</node>
<node CREATED="1529047370401" HGAP="127" ID="ID_389059005" MODIFIED="1530690651437" TEXT="JWT" VSHIFT="-42">
<node CREATED="1529047379021" ID="ID_366435077" MODIFIED="1530092527900" TEXT="JasonWebToken">
<node CREATED="1529674453658" ID="ID_1816733397" MODIFIED="1530690697919" TEXT="RBAC  Role Based Access Control">
<icon BUILTIN="messagebox_warning"/>
</node>
<node CREATED="1530690725821" ID="ID_624172989" MODIFIED="1530690739690" TEXT="More client use, not full implemenation"/>
<node CREATED="1530691020680" ID="ID_844437466" MODIFIED="1530691063996" TEXT="combined with javax.annotation.security v1.2">
<node CREATED="1530691074455" ID="ID_334347980" MODIFIED="1530691079779" TEXT="@RolesAllowed"/>
</node>
</node>
<node CREATED="1529672852425" ID="ID_1379038490" MODIFIED="1530092527900" TEXT="https://microprofile.io/project/eclipse/microprofile-jwt-auth"/>
<node CREATED="1529673088150" ID="ID_834565233" MODIFIED="1530092527900" TEXT="https://docs.payara.fish/documentation/microprofile/jwt.html"/>
<node CREATED="1529673756440" ID="ID_660356716" MODIFIED="1530092527900" TEXT="https://github.com/javaee-samples/microprofile1.2-samples/tree/master/jwt-auth"/>
<node CREATED="1529673960121" ID="ID_1651354128" MODIFIED="1530092527900" TEXT="https://microprofile.io/project/eclipse/microprofile-jwt-auth/spec/src/main/asciidoc/microprofile-jwt-auth-spec.asciidoc"/>
<node CREATED="1529674610772" ID="ID_1769756692" MODIFIED="1530092527900" TEXT="https://github.com/eclipse/microprofile-evolution-process/blob/master/proposals/0005-jwt-rbac.md"/>
<node CREATED="1529673090492" ID="ID_290932830" MODIFIED="1530092527900" TEXT="Protect the endpoints"/>
<node CREATED="1530108179242" ID="ID_953333876" MODIFIED="1530108183267" TEXT="Must be signed">
<node CREATED="1530108185022" ID="ID_218119865" MODIFIED="1530108191445" TEXT="payara: RSASSA-PKCS-v1_5 using the SHA-256 hash algorithm."/>
</node>
<node CREATED="1529673159932" ID="ID_1807949341" MODIFIED="1530092527900" TEXT="annotations">
<node CREATED="1529673164278" ID="ID_1772985571" MODIFIED="1530092527900" TEXT="@LoginConfig"/>
<node CREATED="1529673293483" ID="ID_1813801525" MODIFIED="1530092527900" TEXT="@RolesAllowed">
<node CREATED="1529673314869" ID="ID_1716516623" MODIFIED="1530092527900" TEXT="*javax std"/>
</node>
</node>
<node CREATED="1530092358712" ID="ID_648614370" MODIFIED="1530092527900" TEXT="1st impression is for simply verifying that the caller has a valid, signed jwt.">
<node CREATED="1530092388801" ID="ID_1228737613" MODIFIED="1530092527900" TEXT="NOT a full processing implementation"/>
<node CREATED="1530092401109" ID="ID_192371473" MODIFIED="1530092527900" TEXT="Good for micro design"/>
<node CREATED="1530092410340" ID="ID_362159897" MODIFIED="1530092527900" TEXT="assuming other server does SSO"/>
</node>
<node CREATED="1530695517846" ID="ID_646572521" MODIFIED="1530695597837" TEXT="used to protect services with the signed token, then verify the roles"/>
</node>
<node CREATED="1529047261273" HGAP="90" ID="ID_503130072" MODIFIED="1529672144786" TEXT="OpenAPI 3" VSHIFT="-9">
<node CREATED="1529047303670" ID="ID_1621459318" MODIFIED="1529047305804" TEXT="https://github.com/eclipse/microprofile-open-api/blob/master/spec/src/main/asciidoc/microprofile-openapi-spec.adoc"/>
<node CREATED="1529047315487" ID="ID_1609820075" MODIFIED="1529047317021" TEXT="https://github.com/eclipse/microprofile-open-api"/>
<node CREATED="1529047355433" ID="ID_54785634" MODIFIED="1529047357027" TEXT="https://developer.ibm.com/wasdev/blog/2018/04/13/document-restful-apis-openapi-beta/"/>
<node CREATED="1530089190386" ID="ID_439361101" MODIFIED="1530089191752" TEXT="https://github.com/eclipse/microprofile-open-api/blob/master/spec/src/main/asciidoc/microprofile-openapi-spec.adoc"/>
<node CREATED="1530092334362" ID="ID_110283342" MODIFIED="1530092349529" TEXT="A Lot more configruation and annotation code"/>
<node CREATED="1530100157813" ID="ID_84051388" MODIFIED="1530100162274" TEXT="annotations:">
<node CREATED="1530687826345" ID="ID_1300961201" MODIFIED="1530687830681" TEXT="@OpenAPIDefinition"/>
<node CREATED="1530687832985" ID="ID_1189854161" MODIFIED="1530687836459" TEXT="@Info"/>
<node CREATED="1530100168450" ID="ID_209553555" MODIFIED="1530100186577" TEXT="@ApiResponses"/>
<node CREATED="1530100186918" ID="ID_1039182763" MODIFIED="1530100192304" TEXT="@ApiResponse"/>
<node CREATED="1530100199950" ID="ID_281413653" MODIFIED="1530100207767" TEXT="@Content"/>
<node CREATED="1530687685233" ID="ID_1043504736" MODIFIED="1530687691269" TEXT="@Schema">
<node CREATED="1530687695367" ID="ID_245823809" MODIFIED="1530687710389" TEXT="Document a bean class"/>
</node>
</node>
</node>
</node>
<node CREATED="1528786340878" HGAP="-13" ID="ID_1825516676" MODIFIED="1529672495170" POSITION="left" TEXT="baseline" VSHIFT="-29">
<node CREATED="1528786347299" ID="ID_1288662360" MODIFIED="1528874316606" TEXT="JAX-RS + CDI + JSON-P"/>
</node>
<node CREATED="1528786450586" ID="ID_286521325" MODIFIED="1528874316606" POSITION="left" TEXT="MicroProfile runtime">
<node CREATED="1528786467799" ID="ID_962625771" MODIFIED="1528874316606" TEXT="https://openliberty.io/"/>
<node CREATED="1529047593653" ID="ID_1086810688" MODIFIED="1529047602322" TEXT="Use one dependency">
<node CREATED="1529047606434" ID="ID_1802711560" MODIFIED="1529047609255" TEXT="&lt;dependency&gt; &#x9;&lt;groupId&gt;org.eclipse.microprofile&lt;/groupId&gt; &#x9;&lt;artifactId&gt;microprofile&lt;/artifactId&gt; &#x9;&lt;version&gt;1.3&lt;/version&gt; &#x9;&lt;type&gt;pom&lt;/type&gt; &lt;/dependency&gt; "/>
</node>
<node CREATED="1529672804938" ID="ID_158524515" MODIFIED="1529672806087" TEXT="https://microprofile.io/project/eclipse/microprofile-bom"/>
<node CREATED="1530264547635" ID="ID_1051757795" MODIFIED="1530264549407" TEXT="https://www.voxxed.com/2017/01/microservices-and-javaee-at-cern/"/>
<node CREATED="1530264895061" ID="ID_1124302596" MODIFIED="1530264900668" TEXT="Apache 2.0 License"/>
</node>
<node CREATED="1530083734263" HGAP="62" ID="ID_1249887084" MODIFIED="1530083740746" POSITION="left" TEXT="migration" VSHIFT="22">
<node CREATED="1530085483548" ID="ID_235987784" MODIFIED="1530085495102" TEXT="mvn bom"/>
<node CREATED="1530083743422" ID="ID_1041435463" MODIFIED="1530083760587" TEXT="remove spring annotations">
<node CREATED="1530165510686" ID="ID_257847600" MODIFIED="1530165550834" TEXT="Services marked by javax CDI">
<node CREATED="1530165560359" ID="ID_1659769055" MODIFIED="1530165562463" TEXT="@ApplicationScoped"/>
</node>
</node>
<node CREATED="1530085497800" ID="ID_1296591592" MODIFIED="1530085502145" TEXT="define Application"/>
<node CREATED="1530088876147" ID="ID_1392375797" MODIFIED="1530088893009" TEXT="migrate swagger 2(?) to OpenAPI"/>
<node CREATED="1530184715142" ID="ID_617744762" MODIFIED="1530184725618" TEXT="move config property to -&gt; META-INF/microprofile-config.properties"/>
<node CREATED="1530775384349" ID="ID_898000973" MODIFIED="1530775387076" TEXT="https://github.com/OpenAPITools/openapi-generator/blob/master/docs/migration-from-swagger-codegen.md"/>
<node CREATED="1530775466777" ID="ID_1259946530" MODIFIED="1530775468230" TEXT="https://github.com/openapitools/openapi-generator"/>
</node>
<node CREATED="1529667108814" HGAP="95" ID="ID_1887087513" MODIFIED="1529672507906" POSITION="left" TEXT="some Links" VSHIFT="61">
<node CREATED="1529046214624" ID="ID_1607269539" MODIFIED="1529046216812" TEXT="docker">
<node CREATED="1529046219236" ID="ID_626142382" MODIFIED="1529046221491" TEXT="https://developer.ibm.com/wasdev/docs/deploy-java-microservice-open-apis-in-containers-using-websphere-kubernetes-and-ibm-cloud/ "/>
</node>
<node CREATED="1528964030351" ID="ID_450952865" MODIFIED="1528964031858" TEXT="https://opensource.com/article/18/1/eclipse-microprofile"/>
<node CREATED="1528800010589" ID="ID_1011206602" MODIFIED="1528874316606" TEXT="https://github.com/eclipse/microprofile-samples"/>
<node CREATED="1528786362406" ID="ID_1639175459" MODIFIED="1528874316606" TEXT="http://www.baeldung.com/eclipse-microprofile"/>
<node CREATED="1528785950006" ID="ID_776554527" MODIFIED="1528874316606" TEXT="https://blog.payara.fish/building-your-next-microservice-with-eclipse-microprofile"/>
<node CREATED="1528786303113" ID="ID_1115437648" MODIFIED="1528874316605" TEXT="https://microprofile.io/blog"/>
<node CREATED="1528785941851" ID="ID_518091471" MODIFIED="1528874316605" TEXT="http://wiki.eclipse.org/MicroProfile/Articles"/>
<node CREATED="1528785934242" ID="ID_764803235" MODIFIED="1528874316605" TEXT="https://drive.google.com/file/d/0B7PK4ZIk1mjAb1pNTWxydVpzV1U/view"/>
<node CREATED="1528785926658" ID="ID_417834556" MODIFIED="1528874316605" TEXT="https://dzone.com/articles/microprofile-5-things-you-need-to-know"/>
<node CREATED="1528799848651" ID="ID_1524444171" MODIFIED="1528874316606" TEXT="https://projects.eclipse.org/projects/technology.microprofile/developer"/>
<node CREATED="1528957314745" ID="ID_1333052421" MODIFIED="1530619122361" TEXT="https://wiki.eclipse.org/MicroProfile/Implementation">
<icon BUILTIN="yes"/>
<node CREATED="1528957436678" ID="ID_1851422888" MODIFIED="1528957439550" TEXT="releases"/>
<node CREATED="1528957440485" ID="ID_1802627758" MODIFIED="1528957444114" TEXT="further projects"/>
</node>
</node>
<node CREATED="1530088740179" ID="ID_1027885838" MODIFIED="1530203588276" POSITION="left" TEXT="Servers">
<node CREATED="1530265146430" ID="ID_1065938157" MODIFIED="1530265157193" TEXT="https://wiki.eclipse.org/MicroProfile/Implementation"/>
<node CREATED="1530203641130" ID="ID_1886460827" MODIFIED="1530203646135" TEXT="OpenLiberty">
<node CREATED="1530203648606" ID="ID_1839887545" MODIFIED="1530203670128" TEXT="src/main/liberty/server.xml"/>
<node CREATED="1530262539936" ID="ID_1299896743" MODIFIED="1530262541693" TEXT="mvn clean package liberty:run-server "/>
<node CREATED="1530262583609" ID="ID_1178302266" MODIFIED="1530262592577" TEXT="mvn liberty:stop-server"/>
<node CREATED="1530263835350" ID="ID_1201296645" MODIFIED="1530263838422" TEXT="https://github.com/WASdev/ci.maven/blob/master/README.md"/>
<node CREATED="1530264101924" ID="ID_1942754791" MODIFIED="1530264103646" TEXT="https://openliberty.io/"/>
<node CREATED="1530264159223" ID="ID_1164665601" MODIFIED="1530264160725" TEXT="https://openliberty.io/docs/ref/microprofile/1.3/"/>
<node CREATED="1530264197182" ID="ID_1553365240" MODIFIED="1530264198543" TEXT="https://developer.ibm.com/wasdev/docs/microprofile/"/>
<node CREATED="1530264087591" ID="ID_118995475" MODIFIED="1530264088916" TEXT="https://www.phillip-kruger.com/post/fatjars_thinwars_and_why_openliberty_is_cool/"/>
<node CREATED="1530704796218" ID="ID_962792305" MODIFIED="1530704797915" TEXT="https://www.ibm.com/support/knowledgecenter/SSEQTP_liberty/com.ibm.websphere.wlp.doc/ae/twlp_classloader.html"/>
<node CREATED="1530517813804" ID="ID_1553263656" MODIFIED="1530517819758" TEXT="Restriction with CDI">
<node CREATED="1530517821256" ID="ID_889639354" MODIFIED="1530517823033" TEXT="https://www.ibm.com/support/knowledgecenter/en/SSEQTP_liberty/com.ibm.websphere.wlp.doc/ae/rwlp_jaxrs2.0_ejbcdi.html"/>
</node>
</node>
<node CREATED="1530264065267" ID="ID_1988724694" MODIFIED="1530264068414" TEXT="payara">
<node CREATED="1530264268740" ID="ID_1632328754" MODIFIED="1530264270103" TEXT="https://docs.payara.fish/documentation/microprofile/"/>
<node CREATED="1530264305813" ID="ID_1929500083" MODIFIED="1530264306841" TEXT="https://blog.payara.fish/building-your-next-microservice-with-eclipse-microprofile"/>
</node>
<node CREATED="1530265267383" ID="ID_365686172" MODIFIED="1530265269327" TEXT="tomee">
<node CREATED="1530265271451" ID="ID_1092030093" MODIFIED="1530265273111" TEXT="http://techorgan.com/microservices/microservices-series-microprofile-and-apache-tomee/"/>
<node CREATED="1530265274502" ID="ID_1861991383" MODIFIED="1530265831560" TEXT="not Complaint?? suports MP v 1.0"/>
<node CREATED="1530265330660" ID="ID_409050713" MODIFIED="1530265332199" TEXT="http://tomee.apache.org/apache-tomee.html"/>
<node CREATED="1530270039560" ID="ID_348316973" MODIFIED="1530270044013" TEXT="OLD: 2016-11-11"/>
<node CREATED="1530270249578" ID="ID_513920975" MODIFIED="1530270251524" TEXT="https://github.com/apache/geronimo-config"/>
<node CREATED="1530270321762" ID="ID_1678676697" MODIFIED="1530270336503" TEXT="discussion on uping for more http://tomee-openejb.979440.n4.nabble.com/TomEE-and-MicroProfile-td4683395.html"/>
<node CREATED="1530270411592" ID="ID_142675869" MODIFIED="1530278163330" TEXT="http://tomee.apache.org/download-ng.html">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1530265468524" ID="ID_263954541" MODIFIED="1530265471084" TEXT="wildfly">
<node CREATED="1530265472418" ID="ID_1912347511" MODIFIED="1530265474036" TEXT="http://wildfly-swarm.io/"/>
<node CREATED="1530265833094" ID="ID_609439776" MODIFIED="1530265842360" TEXT="support up to MP v 1.3"/>
</node>
</node>
</node>
</map>
