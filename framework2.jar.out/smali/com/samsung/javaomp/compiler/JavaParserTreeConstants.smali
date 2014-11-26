.class public interface abstract Lcom/samsung/javaomp/compiler/JavaParserTreeConstants;
.super Ljava/lang/Object;


# static fields
.field public static final JJTBLOCK:I = 0xf

.field public static final JJTCATCHBLOCK:I = 0xe

.field public static final JJTCLASSORINTERFACEBODY:I = 0x4

.field public static final JJTCLASSORINTERFACEBODYDECLARATION:I = 0x5

.field public static final JJTCOMPILATIONUNIT:I = 0x0

.field public static final JJTCONSTRUCTORDECLATRATION:I = 0x8

.field public static final JJTFORMALPARAMETER:I = 0x7

.field public static final JJTFORSTATEMENT:I = 0xd

.field public static final JJTIMPORTDECLARATION:I = 0x2

.field public static final JJTLOCALVARIABLEDECLARATION:I = 0xc

.field public static final JJTMETHODDECLARATION:I = 0x6

.field public static final JJTNAME:I = 0x9

.field public static final JJTOMPBARRIER:I = 0x13

.field public static final JJTOMPCANCELSTATEMENT:I = 0x1d

.field public static final JJTOMPCANONICALFOR:I = 0x22

.field public static final JJTOMPCLAUSES:I = 0x21

.field public static final JJTOMPCOMMENTDEFINITION:I = 0x10

.field public static final JJTOMPCRITICAL:I = 0x18

.field public static final JJTOMPDECLARATION:I = 0x11

.field public static final JJTOMPFOREXITCOND:I = 0x24

.field public static final JJTOMPFORINCREXPR:I = 0x25

.field public static final JJTOMPFORINITEXPR:I = 0x23

.field public static final JJTOMPIDENTIFIER:I = 0x26

.field public static final JJTOMPMASTER:I = 0x16

.field public static final JJTOMPNONPARALLELFOR:I = 0x1f

.field public static final JJTOMPNONPARALLELSECTIONS:I = 0x1c

.field public static final JJTOMPORDERED:I = 0x17

.field public static final JJTOMPPARALLELDECLARATION:I = 0x12

.field public static final JJTOMPPARALLELFOR:I = 0x1e

.field public static final JJTOMPPARALLELSECTIONS:I = 0x1b

.field public static final JJTOMPPARALLELSTATEMENT:I = 0x1a

.field public static final JJTOMPSINGLE:I = 0x19

.field public static final JJTOMPTASK:I = 0x20

.field public static final JJTOMPTASKWAIT:I = 0x14

.field public static final JJTOMPTASKYIELD:I = 0x15

.field public static final JJTPRIMARYPREFIX:I = 0xa

.field public static final JJTSTATEMENT:I = 0xb

.field public static final JJTTYPEDECLARATION:I = 0x3

.field public static final JJTVOID:I = 0x1

.field public static final jjtNodeName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CompilationUnit"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "void"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ImportDeclaration"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TypeDeclaration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ClassOrInterfaceBody"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ClassOrInterfaceBodyDeclaration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MethodDeclaration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "FormalParameter"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ConstructorDeclatration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "PrimaryPrefix"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Statement"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "LocalVariableDeclaration"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ForStatement"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CatchBlock"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Block"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "OMPCommentDefinition"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "OMPDeclaration"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "OMPParallelDeclaration"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "OMPBarrier"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "OMPTaskwait"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "OMPTaskyield"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "OMPMaster"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "OMPOrdered"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "OMPCritical"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "OMPSingle"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "OMPParallelStatement"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "OMPParallelSections"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "OMPNonParallelSections"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "OMPCancelStatement"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "OMPParallelFor"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "OMPNonParallelFor"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "OMPTask"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "OMPClauses"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "OMPCanonicalFor"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "OMPForInitExpr"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "OMPForExitCond"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "OMPForIncrExpr"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "OMPIdentifier"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTreeConstants;->jjtNodeName:[Ljava/lang/String;

    return-void
.end method
