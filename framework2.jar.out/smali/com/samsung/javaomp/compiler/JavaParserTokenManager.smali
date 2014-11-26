.class public Lcom/samsung/javaomp/compiler/JavaParserTokenManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/javaomp/compiler/JavaParserConstants;


# static fields
.field static final jjbitVec0:[J

.field static final jjbitVec10:[J

.field static final jjbitVec11:[J

.field static final jjbitVec12:[J

.field static final jjbitVec13:[J

.field static final jjbitVec14:[J

.field static final jjbitVec15:[J

.field static final jjbitVec16:[J

.field static final jjbitVec17:[J

.field static final jjbitVec18:[J

.field static final jjbitVec19:[J

.field static final jjbitVec2:[J

.field static final jjbitVec20:[J

.field static final jjbitVec21:[J

.field static final jjbitVec22:[J

.field static final jjbitVec23:[J

.field static final jjbitVec24:[J

.field static final jjbitVec25:[J

.field static final jjbitVec26:[J

.field static final jjbitVec27:[J

.field static final jjbitVec28:[J

.field static final jjbitVec29:[J

.field static final jjbitVec3:[J

.field static final jjbitVec30:[J

.field static final jjbitVec31:[J

.field static final jjbitVec32:[J

.field static final jjbitVec33:[J

.field static final jjbitVec34:[J

.field static final jjbitVec35:[J

.field static final jjbitVec36:[J

.field static final jjbitVec37:[J

.field static final jjbitVec38:[J

.field static final jjbitVec39:[J

.field static final jjbitVec4:[J

.field static final jjbitVec40:[J

.field static final jjbitVec41:[J

.field static final jjbitVec42:[J

.field static final jjbitVec43:[J

.field static final jjbitVec44:[J

.field static final jjbitVec45:[J

.field static final jjbitVec46:[J

.field static final jjbitVec47:[J

.field static final jjbitVec48:[J

.field static final jjbitVec49:[J

.field static final jjbitVec5:[J

.field static final jjbitVec50:[J

.field static final jjbitVec51:[J

.field static final jjbitVec52:[J

.field static final jjbitVec53:[J

.field static final jjbitVec54:[J

.field static final jjbitVec55:[J

.field static final jjbitVec56:[J

.field static final jjbitVec57:[J

.field static final jjbitVec58:[J

.field static final jjbitVec59:[J

.field static final jjbitVec6:[J

.field static final jjbitVec60:[J

.field static final jjbitVec61:[J

.field static final jjbitVec7:[J

.field static final jjbitVec8:[J

.field static final jjbitVec9:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field private image:Ljava/lang/StringBuilder;

.field protected input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

.field private final jjimage:Ljava/lang/StringBuilder;

.field private jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field private lengthOfMatch:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x4

    new-array v0, v3, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec0:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec2:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec3:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec4:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_4

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec5:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_5

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec6:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_6

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec7:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_7

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec8:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_8

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec9:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_9

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec10:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec11:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_b

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec12:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_c

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec13:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_d

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec14:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_e

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec15:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_f

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec16:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_10

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec17:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_11

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec18:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_12

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec19:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_13

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec20:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_14

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec21:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_15

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec22:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_16

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec23:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_17

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec24:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_18

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec25:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_19

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec26:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec27:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_1b

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec28:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec29:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_1d

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec30:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec31:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_1f

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec32:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_20

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec33:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_21

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec34:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_22

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec35:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_23

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec36:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_24

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec37:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_25

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec38:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_26

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec39:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_27

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec40:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_28

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec41:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_29

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec42:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec43:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_2b

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec44:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec45:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_2d

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec46:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec47:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_2f

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec48:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_30

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec49:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_31

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec50:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_32

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec51:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_33

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec52:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_34

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec53:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_35

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec54:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_36

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec55:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_37

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec56:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_38

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec57:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_39

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec58:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec59:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_3b

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec60:[J

    new-array v0, v3, [J

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec61:[J

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_3d

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnextStates:[I

    const/16 v0, 0xbd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v6

    aput-object v4, v0, v7

    const/4 v1, 0x2

    const-string v2, "//"

    aput-object v2, v0, v1

    aput-object v4, v0, v5

    aput-object v4, v0, v3

    const/4 v1, 0x5

    aput-object v4, v0, v1

    const/4 v1, 0x6

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "parallel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "sections"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "section"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "barrier"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "master"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "for"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cancel"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "critical"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "single"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "task"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "taskwait"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "taskyield"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "nowait"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "private"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "reduction"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "shared"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "schedule"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "firstprivate"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "lastprivate"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "copyprivate"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "default"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "ordered"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "final"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "mergeable"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "if"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "num_threads"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "collapse"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "static"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "dynamic"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "guided"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "runtime"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "none"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "&&"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "||"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "min"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "max"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    aput-object v4, v0, v1

    const/16 v1, 0x37

    aput-object v4, v0, v1

    const/16 v1, 0x38

    aput-object v4, v0, v1

    const/16 v1, 0x39

    aput-object v4, v0, v1

    const/16 v1, 0x3a

    aput-object v4, v0, v1

    const/16 v1, 0x3b

    aput-object v4, v0, v1

    const/16 v1, 0x3c

    aput-object v4, v0, v1

    const/16 v1, 0x3d

    aput-object v4, v0, v1

    const/16 v1, 0x3e

    aput-object v4, v0, v1

    const/16 v1, 0x3f

    aput-object v4, v0, v1

    const/16 v1, 0x40

    aput-object v4, v0, v1

    const/16 v1, 0x41

    aput-object v4, v0, v1

    const/16 v1, 0x42

    aput-object v4, v0, v1

    const/16 v1, 0x43

    aput-object v4, v0, v1

    const/16 v1, 0x44

    aput-object v4, v0, v1

    const/16 v1, 0x45

    aput-object v4, v0, v1

    const/16 v1, 0x46

    aput-object v4, v0, v1

    const/16 v1, 0x47

    const-string v2, "abstract"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "assert"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "boolean"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "break"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "byte"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "case"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "catch"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "char"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "class"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "const"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "continue"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "default"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "do"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "double"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "else"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "enum"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "extends"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "false"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "final"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "finally"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "float"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "for"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "goto"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "if"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "implements"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "import"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "instanceof"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "int"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "interface"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "long"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string/jumbo v2, "native"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string/jumbo v2, "new"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string/jumbo v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string/jumbo v2, "package"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string/jumbo v2, "private"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string/jumbo v2, "protected"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string/jumbo v2, "public"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string/jumbo v2, "return"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string/jumbo v2, "short"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string/jumbo v2, "static"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string/jumbo v2, "strictfp"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string/jumbo v2, "super"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string/jumbo v2, "switch"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string/jumbo v2, "synchronized"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string/jumbo v2, "this"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string/jumbo v2, "throw"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string/jumbo v2, "throws"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string/jumbo v2, "transient"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string/jumbo v2, "true"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string/jumbo v2, "try"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string/jumbo v2, "void"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string/jumbo v2, "volatile"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string/jumbo v2, "while"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    aput-object v4, v0, v1

    const/16 v1, 0x7d

    aput-object v4, v0, v1

    const/16 v1, 0x7e

    aput-object v4, v0, v1

    const/16 v1, 0x7f

    aput-object v4, v0, v1

    const/16 v1, 0x80

    aput-object v4, v0, v1

    const/16 v1, 0x81

    aput-object v4, v0, v1

    const/16 v1, 0x82

    aput-object v4, v0, v1

    const/16 v1, 0x83

    aput-object v4, v0, v1

    const/16 v1, 0x84

    aput-object v4, v0, v1

    const/16 v1, 0x85

    aput-object v4, v0, v1

    const/16 v1, 0x86

    aput-object v4, v0, v1

    const/16 v1, 0x87

    aput-object v4, v0, v1

    const/16 v1, 0x88

    aput-object v4, v0, v1

    const/16 v1, 0x89

    aput-object v4, v0, v1

    const/16 v1, 0x8a

    const-string v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string/jumbo v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "!"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string/jumbo v2, "~"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "=="

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "<="

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, ">="

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "!="

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string/jumbo v2, "||"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "&&"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "++"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "--"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string/jumbo v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "<<"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "+="

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "-="

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "*="

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "/="

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "&="

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string/jumbo v2, "|="

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "^="

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "%="

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "<<="

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, ">>="

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, ">>>="

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "..."

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, ">>>"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, ">>"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    aput-object v4, v0, v1

    const/16 v1, 0xbb

    const-string v2, "\u001a"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    aput-object v4, v0, v1

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v6

    const-string v1, "IN_OMP_COMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "IN_FORMAL_COMMENT"

    aput-object v2, v0, v1

    const-string v1, "IN_MULTI_LINE_COMMENT"

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v0, 0xbd

    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    new-array v0, v5, [J

    fill-array-data v0, :array_3f

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoToken:[J

    new-array v0, v5, [J

    fill-array-data v0, :array_40

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoSkip:[J

    new-array v0, v5, [J

    fill-array-data v0, :array_41

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoSpecial:[J

    new-array v0, v5, [J

    fill-array-data v0, :array_42

    sput-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoMore:[J

    return-void

    :array_0
    .array-data 8
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 8
        -0xfffffffdffffeL
        -0x2001
        -0xff080000001L
        0x12000000007fffffL
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x420043c00000000L
        -0x80000000800001L
    .end array-data

    :array_4
    .array-data 8
        0xffffcffffffffL
        -0x10000
        -0x600c00000000001L
        0x401f00030003L
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x400000000000000L
        -0x4000028c0L
        0xffffffcff7fffL
    .end array-data

    :array_6
    .array-data 8
        -0x1
        -0x1
        -0xffd
        0x33fffffffff199fL
    .end array-data

    :array_7
    .array-data 8
        -0x2000000000000L
        -0x1fd800001L
        0xff
        0x707ffffff0000L
    .end array-data

    :array_8
    .array-data 8
        0x7fffffe00000000L
        -0x1fffffffff801L
        -0x1
        0x1c000060002fffffL
    .end array-data

    :array_9
    .array-data 8
        0x1ffffffd0000L
        0x0
        0x3fffffffffL
        0x0
    .end array-data

    :array_a
    .array-data 8
        0x23ffffffffffffe0L
        0x3ff010000L
        0x3c5fdfffff99fe0L
        0xf0003b0000000L
    .end array-data

    :array_b
    .array-data 8
        0x36dfdfffff987e0L
        0x1c00005e000000L
        0x23edfdfffffbafe0L
        0x100010000L
    .end array-data

    :array_c
    .array-data 8
        0x23cdfdfffff99fe0L
        0x3b0000000L
        0x3bfc718d63dc7e0L
        0x0
    .end array-data

    :array_d
    .array-data 8
        0x3effdfffffddfe0L
        0x300000000L
        0x3effdfffffddfe0L
        0x340000000L
    .end array-data

    :array_e
    .array-data 8
        0x3fffdfffffddfe0L
        0x300000000L
        0x2ffbfffffc7fffe0L
        0x7f
    .end array-data

    :array_f
    .array-data 8
        -0x7ff2000000000002L
        0x7f
        0x200decaefef02596L
        0x3000005f
    .end array-data

    :array_10
    .array-data 8
        0x1
        0x7fffffffeffL
        0xf00
        0x0
    .end array-data

    :array_11
    .array-data 8
        0x6fbffffffffL
        0x3f0000
        -0x100000000L
        0x7fffffffff003fL
    .end array-data

    :array_12
    .array-data 8
        -0x1
        -0x7c000001
        -0xf800000001L
        0x3ffffffffffffffL
    .end array-data

    :array_13
    .array-data 8
        -0x81
        -0xc280c281L
        0x7f3d7fffffff3d7fL
        -0x8000008080c3L
    .end array-data

    :array_14
    .array-data 8
        -0x80c28001L
        0x7ffff7f
        -0x100000000L
        0x1fffffffffffffL
    .end array-data

    :array_15
    .array-data 8
        -0x1
        0x7f9fffffffffffL
        -0xf8000002L
        0x7ffffffffffL
    .end array-data

    :array_16
    .array-data 8
        0x0
        0x0
        0xfffffffffffffL
        0x8000000
    .end array-data

    :array_17
    .array-data 8
        -0x100000000L
        0xffffffffffffffL
        0x1ffffffffffL
        0x0
    .end array-data

    :array_18
    .array-data 8
        -0x1
        -0x1
        -0xf0000001L
        0x3ffffffffffffffL
    .end array-data

    :array_19
    .array-data 8
        -0xc0c00001L
        0x3fffffffaaff3f3fL
        0x5fdfffffffffffffL
        0x1fdc1fff0fcf1fdcL
    .end array-data

    :array_1a
    .array-data 8
        -0x8000000000000000L
        -0x7fffffffffffffffL
        0xffff00000000L
        0x0
    .end array-data

    :array_1b
    .array-data 8
        0x3fbbd503e2ffc84L
        -0x100000000L
        0xf
        0x0
    .end array-data

    :array_1c
    .array-data 8
        0x73e03fe000000e0L
        -0x2
        -0x19fe00001L
        0x7fffffffffffffffL
    .end array-data

    :array_1d
    .array-data 8
        -0x1e00000000020L
        -0x1
        0xffffff00007fffL
        0x0
    .end array-data

    :array_1e
    .array-data 8
        -0x1
        -0x1
        0x3fffffffffffffL
        0x0
    .end array-data

    :array_1f
    .array-data 8
        -0x1
        -0x1
        0x3fffffffffL
        0x0
    .end array-data

    :array_20
    .array-data 8
        -0x1
        -0x1
        0x1fff
        0x0
    .end array-data

    :array_21
    .array-data 8
        -0x1
        -0x1
        0xfffffffffL
        0x0
    .end array-data

    :array_22
    .array-data 8
        0x3fffffffffffL
        0x0
        0x0
        0x0
    .end array-data

    :array_23
    .array-data 8
        0x5f7ffdffa0f8007fL
        -0x25
        0x3ffffffffffffL
        -0x80000
    .end array-data

    :array_24
    .array-data 8
        0x3fffffffffffffffL
        -0x10000
        -0x30001
        0xfff0000000000ffL
    .end array-data

    :array_25
    .array-data 8
        0x18000000000000L
        -0x28fdffffff2000L
        -0x1
        0x1fffffffffffffffL
    .end array-data

    :array_26
    .array-data 8
        -0x78000001fffffff0L
        -0x1ff8000002L
        0x7fffffffffffffffL
        0x631cfcfcfcL
    .end array-data

    :array_27
    .array-data 8
        0x0
        0x0
        0x420043cffffffffL
        -0x80000000800001L
    .end array-data

    :array_28
    .array-data 8
        -0x1
        0x400000700007fffL
        -0x4000028c0L
        0xffffffcff7fffL
    .end array-data

    :array_29
    .array-data 8
        -0x1
        -0x1
        -0xf85
        0x33fffffffff199fL
    .end array-data

    :array_2a
    .array-data 8
        -0x2000000000000L
        -0x1fd800001L
        -0x440000040001ff01L
        0x707ffffff0016L
    .end array-data

    :array_2b
    .array-data 8
        0x7fffffe00000000L
        -0xfc00ffc00001L
        -0x1
        0x1fff3dff9fefffffL
    .end array-data

    :array_2c
    .array-data 8
        -0xe00000008000L
        0x7ff
        0x1ffffffffffffL
        0x0
    .end array-data

    :array_2d
    .array-data 8
        -0xc00000000000012L
        0xffcfff1f3fffL
        -0x2c3a020000066012L
        0xfffcfb080399fL
    .end array-data

    :array_2e
    .array-data 8
        -0x2c9202000006781cL
        0x1fffc05e003987L
        -0xc12020000045012L
        0xffc100013bbfL
    .end array-data

    :array_2f
    .array-data 8
        -0xc32020000066012L
        0xffc3b0c0398fL
        -0x3c4038e729c23814L
        0xff8000803dc7L
    .end array-data

    :array_30
    .array-data 8
        -0x3c10020000022012L
        0xffc300603ddfL
        -0x3c10020000022014L
        0xffc340603ddfL
    .end array-data

    :array_31
    .array-data 8
        -0x3c00020000022014L
        0xffc300803dcfL
        0x2ffbfffffc7fffecL
        0xc0000ff5f847fL
    .end array-data

    :array_32
    .array-data 8
        -0x7800000000000002L
        0x3ff7fff
        0x3bffecaefef02596L
        0x33ff3f5f
    .end array-data

    :array_33
    .array-data 8
        -0x3d5ffc00fcffffffL
        -0x1f80000000101L
        0x1ffffffffeff0fdfL
        0x40
    .end array-data

    :array_34
    .array-data 8
        0x3c7f6fbffffffffL
        0x3ff03ff
        -0x100000000L
        0x7fffffffff003fL
    .end array-data

    :array_35
    .array-data 8
        -0x80c28001L
        0x3fe0007ffff7fL
        -0x100000000L
        0x1fffffffffffffL
    .end array-data

    :array_36
    .array-data 8
        0x0
        0x0
        -0x1
        0x3ff080fffffL
    .end array-data

    :array_37
    .array-data 8
        -0xfc008800L
        0xffffffffffffffL
        0x3ffffffffffL
        0x0
    .end array-data

    :array_38
    .array-data 8
        -0x7fff83ffffff1000L
        -0x7fff03ffffffffffL
        0xffff00000000L
        0x21fff0000L
    .end array-data

    :array_39
    .array-data 8
        0x73efffe000000e0L
        -0x2
        -0x199e00001L
        0x7fffffffffffffffL
    .end array-data

    :array_3a
    .array-data 8
        0x5f7ffdffe0f8007fL
        -0x25
        0x3ffffffffffffL
        -0x80000
    .end array-data

    :array_3b
    .array-data 8
        0x18000f00000000L
        -0x28fdffffff2000L
        -0x1
        -0x6000000000000001L
    .end array-data

    :array_3c
    .array-data 8
        -0x78000001fc00fff0L
        -0x1ff8000002L
        0x7fffffffffffffffL
        0xe0000631cfcfcfcL
    .end array-data

    :array_3d
    .array-data 4
        0x3c
        0x3d
        0x3f
        0x1e
        0x1f
        0x8
        0x22
        0x23
        0x26
        0x27
        0x2d
        0x3a
        0x3b
        0x13
        0x14
        0x16
        0xa
        0xc
        0x41
        0x43
        0x2
        0x44
        0x4b
        0x4
        0x5
        0x8
        0x13
        0x14
        0x18
        0x16
        0x1e
        0x1f
        0x8
        0x28
        0x29
        0x8
        0x32
        0x33
        0x35
        0x45
        0x46
        0x4c
        0x4d
        0x4e
        0x6
        0x7
        0xd
        0xe
        0x10
        0x15
        0x17
        0x19
        0x20
        0x21
        0x24
        0x25
        0x2a
        0x2b
        0x47
        0x48
        0x49
        0x4a
        0x4f
        0x50
    .end array-data

    :array_3e
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x3
        -0x1
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_3f
    .array-data 8
        0xa7fffffffffff8fL
        0x1fffffffffffff80L
        0x1ffffffffffffce1L
    .end array-data

    :array_40
    .array-data 8
        -0xbffffffffffff90L
        0x39
        0x0
    .end array-data

    :array_41
    .array-data 8
        -0xbffffffffffff90L
        0x39
        0x0
    .end array-data

    :array_42
    .array-data 8
        0x0
        0x46
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/javaomp/compiler/JavaCharStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/16 v0, 0x51

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjrounds:[I

    const/16 v0, 0xa2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->defaultLexState:I

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/javaomp/compiler/JavaCharStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;-><init>(Lcom/samsung/javaomp/compiler/JavaCharStream;)V

    invoke-virtual {p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private ReInitRounds()V
    .locals 3

    const v0, -0x7fffffff

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    const/16 v0, 0x51

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private jjAddStates(II)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnextStates:[I

    aget v2, v2, p1

    aput v2, v0, v1

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private static final jjCanMove_0(IIIJJ)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec0:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec2:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static final jjCanMove_1(IIIJJ)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec3:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec4:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec5:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec6:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_3
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec7:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_4
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec8:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_5
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec9:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_6
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec10:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_7
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec11:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_8
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec12:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_9
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec13:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_a
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec14:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_b
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec15:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_c
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec16:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_d
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec17:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_e
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec18:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_f
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec19:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_10
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec20:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_11
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec21:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_12
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec0:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_13
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec22:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_14
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec23:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_15
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec24:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_16
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec25:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_17
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec26:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_18
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec27:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_19
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec28:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_1a
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec29:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_1b
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec30:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_1c
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec31:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_1d
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec32:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_1e
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec33:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_1f
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec34:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_20
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec35:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_21
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec36:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_22
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec37:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_23
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec38:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_24
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec39:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_d
        0x10 -> :sswitch_e
        0x11 -> :sswitch_f
        0x12 -> :sswitch_10
        0x13 -> :sswitch_11
        0x14 -> :sswitch_12
        0x16 -> :sswitch_13
        0x17 -> :sswitch_14
        0x18 -> :sswitch_15
        0x1e -> :sswitch_16
        0x1f -> :sswitch_17
        0x20 -> :sswitch_18
        0x21 -> :sswitch_19
        0x30 -> :sswitch_1a
        0x31 -> :sswitch_1b
        0x4d -> :sswitch_1c
        0x9f -> :sswitch_1d
        0xa4 -> :sswitch_1e
        0xd7 -> :sswitch_1f
        0xfa -> :sswitch_20
        0xfb -> :sswitch_21
        0xfd -> :sswitch_22
        0xfe -> :sswitch_23
        0xff -> :sswitch_24
    .end sparse-switch
.end method

.method private static final jjCanMove_2(IIIJJ)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec3:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec40:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec5:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec41:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_3
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec42:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_4
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec43:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_5
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec44:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_6
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec45:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_7
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec46:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_8
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec47:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_9
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec48:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_a
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec49:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_b
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec50:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_c
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec51:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_d
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec52:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_e
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec53:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_f
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec19:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_10
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec20:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_11
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec54:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_12
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec0:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_13
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec22:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_14
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec55:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_15
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec56:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_16
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec25:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_17
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec26:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_18
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec57:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_19
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec28:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_1a
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec58:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_1b
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec30:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_1c
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec31:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_1d
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec32:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_1e
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec33:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_1f
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec34:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_20
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec35:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_21
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec59:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_22
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec37:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_23
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec60:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :sswitch_24
    sget-object v2, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjbitVec61:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_d
        0x10 -> :sswitch_e
        0x11 -> :sswitch_f
        0x12 -> :sswitch_10
        0x13 -> :sswitch_11
        0x14 -> :sswitch_12
        0x16 -> :sswitch_13
        0x17 -> :sswitch_14
        0x18 -> :sswitch_15
        0x1e -> :sswitch_16
        0x1f -> :sswitch_17
        0x20 -> :sswitch_18
        0x21 -> :sswitch_19
        0x30 -> :sswitch_1a
        0x31 -> :sswitch_1b
        0x4d -> :sswitch_1c
        0x9f -> :sswitch_1d
        0xa4 -> :sswitch_1e
        0xd7 -> :sswitch_1f
        0xfa -> :sswitch_20
        0xfb -> :sswitch_21
        0xfd -> :sswitch_22
        0xfe -> :sswitch_23
        0xff -> :sswitch_24
    .end sparse-switch
.end method

.method private jjCheckNAdd(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjrounds:[I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    aput v1, v0, p1

    :cond_0
    return-void
.end method

.method private jjCheckNAddStates(II)V
    .locals 1

    :goto_0
    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private jjCheckNAddTwoStates(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    invoke-direct {p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private jjMoveNfa_0(II)I
    .locals 13

    const/4 v2, 0x0

    const/16 v0, 0x51

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    move v7, v0

    move v8, v1

    move v9, v2

    :goto_0
    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v1, 0x40

    if-ge v0, v1, :cond_22

    const-wide/16 v0, 0x1

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    shl-long v1, v0, v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    if-ne v8, v9, :cond_1

    move v0, v7

    :goto_2
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    iput v9, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v9, 0x51

    if-ne v1, v2, :cond_32

    :goto_3
    return p2

    :pswitch_1
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_6

    const/16 v0, 0x43

    if-le v7, v0, :cond_4

    const/16 v7, 0x43

    :cond_4
    const/4 v0, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    :cond_5
    :goto_4
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_2

    const/16 v0, 0x2e

    const/16 v3, 0x2f

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_1

    :cond_6
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x38

    aput v4, v0, v3

    goto :goto_4

    :pswitch_2
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    const/16 v3, 0x9

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    move v0, v7

    :goto_5
    const-wide/high16 v3, 0x3fe000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_f

    const/16 v3, 0x7c

    if-le v0, v3, :cond_7

    const/16 v0, 0x7c

    :cond_7
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    move v7, v0

    goto :goto_1

    :cond_8
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_9

    const/16 v0, 0xa

    const/16 v3, 0xc

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    move v0, v7

    goto :goto_5

    :cond_9
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x24

    if-ne v0, v3, :cond_b

    const/16 v0, 0x87

    if-le v7, v0, :cond_a

    const/16 v7, 0x87

    :cond_a
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    move v0, v7

    goto :goto_5

    :cond_b
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x22

    if-ne v0, v3, :cond_c

    const/16 v0, 0xd

    const/16 v3, 0xf

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    move v0, v7

    goto :goto_5

    :cond_c
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x27

    if-ne v0, v3, :cond_d

    const/16 v0, 0x10

    const/16 v3, 0x11

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    move v0, v7

    goto :goto_5

    :cond_d
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_e

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    :cond_e
    move v0, v7

    goto :goto_5

    :cond_f
    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v4, 0x30

    if-ne v3, v4, :cond_33

    const/16 v3, 0x7c

    if-le v0, v3, :cond_10

    const/16 v0, 0x7c

    :cond_10
    const/16 v3, 0x12

    const/16 v4, 0x16

    invoke-direct {p0, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    move v7, v0

    goto/16 :goto_1

    :pswitch_3
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x7c

    if-le v7, v0, :cond_11

    const/16 v7, 0x7c

    :cond_11
    const/4 v0, 0x1

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_4
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_5
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x80

    if-le v7, v0, :cond_12

    const/16 v7, 0x80

    :cond_12
    const/16 v0, 0x17

    const/16 v3, 0x19

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_6
    const-wide v3, 0x280000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_7
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x80

    if-le v7, v0, :cond_13

    const/16 v7, 0x80

    :cond_13
    const/4 v0, 0x7

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_8
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x27

    if-ne v0, v3, :cond_2

    const/16 v0, 0x10

    const/16 v3, 0x11

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1

    :pswitch_9
    const-wide v3, -0x8000002401L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_a
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x27

    if-ne v0, v3, :cond_2

    const/16 v0, 0x85

    if-le v7, v0, :cond_2

    const/16 v7, 0x85

    goto/16 :goto_1

    :pswitch_b
    const-wide v3, 0x8400000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_c
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    const/16 v3, 0xb

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_d
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_e
    const-wide/high16 v3, 0xf000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x11

    aput v4, v0, v3

    goto/16 :goto_1

    :pswitch_f
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_10
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x22

    if-ne v0, v3, :cond_2

    const/16 v0, 0xd

    const/16 v3, 0xf

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_11
    const-wide v3, -0x400002401L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    const/16 v3, 0xf

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_12
    const-wide v3, 0x8400000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    const/16 v3, 0xf

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_13
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x22

    if-ne v0, v3, :cond_2

    const/16 v0, 0x86

    if-le v7, v0, :cond_2

    const/16 v7, 0x86

    goto/16 :goto_1

    :pswitch_14
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x1a

    const/16 v3, 0x1d

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_15
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    const/16 v3, 0xf

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_16
    const-wide/high16 v3, 0xf000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x1a

    aput v4, v0, v3

    goto/16 :goto_1

    :pswitch_17
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_18
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x24

    if-ne v0, v3, :cond_2

    const/16 v0, 0x87

    if-le v7, v0, :cond_14

    const/16 v7, 0x87

    :cond_14
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_19
    const-wide v3, 0x3ff00100fffc1ffL

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x87

    if-le v7, v0, :cond_15

    const/16 v7, 0x87

    :cond_15
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_1a
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    const/16 v3, 0x9

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_1b
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x1e

    const/16 v3, 0x20

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_1c
    const-wide v3, 0x280000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_1d
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x21

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_1e
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x22

    const/16 v3, 0x23

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_1f
    const-wide v3, 0x280000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_20
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x80

    if-le v7, v0, :cond_16

    const/16 v7, 0x80

    :cond_16
    const/16 v0, 0x25

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_21
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x26

    const/16 v3, 0x27

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_22
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_2

    const/16 v0, 0x80

    if-le v7, v0, :cond_17

    const/16 v7, 0x80

    :cond_17
    const/16 v0, 0x21

    const/16 v3, 0x23

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_23
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x80

    if-le v7, v0, :cond_18

    const/16 v7, 0x80

    :cond_18
    const/16 v0, 0x21

    const/16 v3, 0x23

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_24
    const-wide v3, 0x280000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_25
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x80

    if-le v7, v0, :cond_19

    const/16 v7, 0x80

    :cond_19
    const/16 v0, 0x2b

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_26
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_2

    const/16 v0, 0xa

    const/16 v3, 0xc

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1

    :pswitch_27
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x20

    if-ne v0, v3, :cond_2

    const/16 v0, 0x2e

    const/16 v3, 0x2f

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_28
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x23

    if-ne v0, v3, :cond_2

    const/16 v0, 0x30

    const/16 v3, 0x37

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_29
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x20

    if-ne v0, v3, :cond_2

    const/16 v0, 0x30

    const/16 v3, 0x37

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_2a
    const-wide/16 v3, -0x2401

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-le v7, v0, :cond_1a

    const/4 v7, 0x1

    :cond_1a
    const/16 v0, 0x24

    const/16 v3, 0x26

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1

    :pswitch_2b
    const-wide/16 v3, 0x2400

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-le v7, v0, :cond_2

    const/4 v7, 0x1

    goto/16 :goto_1

    :pswitch_2c
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    if-le v7, v0, :cond_2

    const/4 v7, 0x1

    goto/16 :goto_1

    :pswitch_2d
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x34

    aput v4, v0, v3

    goto/16 :goto_1

    :pswitch_2e
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x39

    aput v4, v0, v3

    goto/16 :goto_1

    :pswitch_2f
    const-wide v3, -0x800000000001L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x41

    if-le v7, v0, :cond_2

    const/16 v7, 0x41

    goto/16 :goto_1

    :pswitch_30
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x38

    aput v4, v0, v3

    goto/16 :goto_1

    :pswitch_31
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_2

    const/16 v0, 0x43

    if-le v7, v0, :cond_1b

    const/16 v7, 0x43

    :cond_1b
    const/4 v0, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_32
    const-wide/16 v3, -0x2401

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x43

    if-le v7, v0, :cond_1c

    const/16 v7, 0x43

    :cond_1c
    const/4 v0, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_33
    const-wide/16 v3, 0x2400

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x43

    if-le v7, v0, :cond_2

    const/16 v7, 0x43

    goto/16 :goto_1

    :pswitch_34
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    const/16 v0, 0x43

    if-le v7, v0, :cond_2

    const/16 v7, 0x43

    goto/16 :goto_1

    :pswitch_35
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x3e

    aput v4, v0, v3

    goto/16 :goto_1

    :pswitch_36
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x30

    if-ne v0, v3, :cond_2

    const/16 v0, 0x7c

    if-le v7, v0, :cond_1d

    const/16 v7, 0x7c

    :cond_1d
    const/16 v0, 0x12

    const/16 v3, 0x16

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_37
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x7c

    if-le v7, v0, :cond_1e

    const/16 v7, 0x7c

    :cond_1e
    const/16 v0, 0x42

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_38
    const-wide/high16 v3, 0xff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x7c

    if-le v7, v0, :cond_1f

    const/16 v7, 0x7c

    :cond_1f
    const/16 v0, 0x43

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_39
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x27

    const/16 v3, 0x28

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_1

    :pswitch_3a
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_2

    const/16 v0, 0x47

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_3b
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x47

    const/16 v3, 0x48

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_3c
    const-wide v3, 0x280000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_3d
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x80

    if-le v7, v0, :cond_20

    const/16 v7, 0x80

    :cond_20
    const/16 v0, 0x4a

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :pswitch_3e
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x29

    const/16 v3, 0x2b

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    :pswitch_3f
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_2

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_40
    const-wide v3, 0x280000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_41
    const-wide/high16 v3, 0x3ff000000000000L

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/16 v0, 0x80

    if-le v7, v0, :cond_21

    const/16 v7, 0x80

    :cond_21
    const/16 v0, 0x50

    const/16 v3, 0x8

    invoke-direct {p0, v0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_1

    :cond_22
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2b

    const-wide/16 v0, 0x1

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    and-int/lit8 v2, v2, 0x3f

    shl-long/2addr v0, v2

    :cond_23
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v2, v2, v8

    sparse-switch v2, :sswitch_data_0

    :cond_24
    :goto_6
    if-ne v8, v9, :cond_23

    move v0, v7

    goto/16 :goto_2

    :sswitch_0
    const-wide v2, 0x7fffffe87fffffeL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0x87

    if-le v7, v2, :cond_25

    const/16 v7, 0x87

    :cond_25
    const/16 v2, 0x1c

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_6

    :sswitch_1
    const-wide v2, 0x100000001000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0x7c

    if-le v7, v2, :cond_24

    const/16 v7, 0x7c

    goto :goto_6

    :sswitch_2
    const-wide v2, 0x2000000020L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0x2c

    const/16 v3, 0x2d

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto :goto_6

    :sswitch_3
    const-wide v2, 0x5000000050L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0x80

    if-le v7, v2, :cond_24

    const/16 v7, 0x80

    goto :goto_6

    :sswitch_4
    const-wide/32 v2, -0x10000001

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_6

    :sswitch_5
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_24

    const/16 v2, 0x2e

    const/16 v3, 0x30

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto :goto_6

    :sswitch_6
    const-wide v2, 0x14404410000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_6

    :sswitch_7
    const-wide/32 v2, -0x10000001

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0xd

    const/16 v3, 0xf

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_6

    :sswitch_8
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_24

    const/16 v2, 0x31

    const/16 v3, 0x33

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_6

    :sswitch_9
    const-wide v2, 0x14404410000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0xd

    const/16 v3, 0xf

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_6

    :sswitch_a
    const-wide v2, -0x7800000178000002L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0x87

    if-le v7, v2, :cond_26

    const/16 v7, 0x87

    :cond_26
    const/16 v2, 0x1c

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_6

    :sswitch_b
    const-wide v2, 0x2000000020L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0x34

    const/16 v3, 0x35

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_6

    :sswitch_c
    const-wide v2, 0x2000000020L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0x36

    const/16 v3, 0x37

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_6

    :sswitch_d
    const-wide v2, 0x2000000020L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0x38

    const/16 v3, 0x39

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_6

    :sswitch_e
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x70

    if-ne v2, v3, :cond_24

    const/4 v2, 0x1

    if-le v7, v2, :cond_27

    const/4 v7, 0x1

    :cond_27
    const/16 v2, 0x24

    const/16 v3, 0x26

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_6

    :sswitch_f
    const/4 v2, 0x1

    if-le v7, v2, :cond_28

    const/4 v7, 0x1

    :cond_28
    const/16 v2, 0x24

    const/16 v3, 0x26

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_6

    :sswitch_10
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x6d

    if-ne v2, v3, :cond_24

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x31

    aput v4, v2, v3

    goto/16 :goto_6

    :sswitch_11
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_24

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0x36

    aput v4, v2, v3

    goto/16 :goto_6

    :sswitch_12
    const/16 v2, 0x41

    if-le v7, v2, :cond_24

    const/16 v7, 0x41

    goto/16 :goto_6

    :sswitch_13
    const/16 v2, 0x43

    if-le v7, v2, :cond_29

    const/16 v7, 0x43

    :cond_29
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_6

    :sswitch_14
    const-wide v2, 0x100000001000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0x42

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_6

    :sswitch_15
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0x7c

    if-le v7, v2, :cond_2a

    const/16 v7, 0x7c

    :cond_2a
    const/16 v2, 0x42

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_6

    :sswitch_16
    const-wide v2, 0x100000001000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0x45

    const/16 v3, 0x46

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_6

    :sswitch_17
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0x45

    const/16 v3, 0x46

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_6

    :sswitch_18
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0x3a

    const/16 v3, 0x3b

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_6

    :sswitch_19
    const-wide v2, 0x1000000010000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0x3c

    const/16 v3, 0x3d

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_6

    :sswitch_1a
    const-wide v2, 0x100000001000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0x4c

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_6

    :sswitch_1b
    const-wide v2, 0x7e0000007eL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0x29

    const/16 v3, 0x2b

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_6

    :sswitch_1c
    const-wide v2, 0x1000000010000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_24

    const/16 v2, 0x3e

    const/16 v3, 0x3f

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto/16 :goto_6

    :cond_2b
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    shr-int/lit8 v0, v0, 0x8

    shr-int/lit8 v1, v0, 0x6

    const-wide/16 v2, 0x1

    and-int/lit8 v4, v0, 0x3f

    shl-long v3, v2, v4

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x6

    const-wide/16 v5, 0x1

    iget-char v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    and-int/lit8 v10, v10, 0x3f

    shl-long/2addr v5, v10

    :cond_2c
    iget-object v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v10, v10, v8

    sparse-switch v10, :sswitch_data_1

    :cond_2d
    :goto_7
    if-ne v8, v9, :cond_2c

    move v0, v7

    goto/16 :goto_2

    :sswitch_1d
    invoke-static/range {v0 .. v6}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2d

    const/16 v10, 0x87

    if-le v7, v10, :cond_2e

    const/16 v7, 0x87

    :cond_2e
    const/16 v10, 0x1c

    invoke-direct {p0, v10}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_7

    :sswitch_1e
    invoke-static/range {v0 .. v6}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2d

    iget-object v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v11, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v12, 0xb

    aput v12, v10, v11

    goto :goto_7

    :sswitch_1f
    invoke-static/range {v0 .. v6}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2d

    const/16 v10, 0xd

    const/16 v11, 0xf

    invoke-direct {p0, v10, v11}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto :goto_7

    :sswitch_20
    invoke-static/range {v0 .. v6}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_2(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2d

    const/16 v10, 0x87

    if-le v7, v10, :cond_2f

    const/16 v7, 0x87

    :cond_2f
    const/16 v10, 0x1c

    invoke-direct {p0, v10}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_7

    :sswitch_21
    invoke-static/range {v0 .. v6}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2d

    const/4 v10, 0x1

    if-le v7, v10, :cond_30

    const/4 v7, 0x1

    :cond_30
    const/16 v10, 0x24

    const/16 v11, 0x26

    invoke-direct {p0, v10, v11}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto :goto_7

    :sswitch_22
    invoke-static/range {v0 .. v6}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2d

    const/16 v10, 0x41

    if-le v7, v10, :cond_2d

    const/16 v7, 0x41

    goto :goto_7

    :sswitch_23
    invoke-static/range {v0 .. v6}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_2d

    const/16 v10, 0x43

    if-le v7, v10, :cond_31

    const/16 v7, 0x43

    :cond_31
    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-direct {p0, v10, v11}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjAddStates(II)V

    goto :goto_7

    :cond_32
    :try_start_0
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v0

    move v8, v1

    move v9, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_33
    move v7, v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_1
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_0
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_0
        :pswitch_0
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_0
        :pswitch_37
        :pswitch_38
        :pswitch_0
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_0
        :pswitch_3c
        :pswitch_3d
        :pswitch_0
        :pswitch_3e
        :pswitch_3f
        :pswitch_0
        :pswitch_40
        :pswitch_41
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_2
        0x8 -> :sswitch_3
        0xa -> :sswitch_4
        0xc -> :sswitch_5
        0xd -> :sswitch_6
        0x13 -> :sswitch_7
        0x14 -> :sswitch_8
        0x15 -> :sswitch_9
        0x1c -> :sswitch_a
        0x1f -> :sswitch_b
        0x23 -> :sswitch_c
        0x29 -> :sswitch_d
        0x31 -> :sswitch_e
        0x32 -> :sswitch_f
        0x36 -> :sswitch_10
        0x37 -> :sswitch_11
        0x39 -> :sswitch_12
        0x3c -> :sswitch_13
        0x41 -> :sswitch_14
        0x42 -> :sswitch_15
        0x44 -> :sswitch_16
        0x45 -> :sswitch_17
        0x47 -> :sswitch_18
        0x48 -> :sswitch_19
        0x4b -> :sswitch_1a
        0x4c -> :sswitch_1b
        0x4e -> :sswitch_1c
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1d
        0xa -> :sswitch_1e
        0x13 -> :sswitch_1f
        0x1c -> :sswitch_20
        0x32 -> :sswitch_21
        0x39 -> :sswitch_22
        0x3c -> :sswitch_23
    .end sparse-switch
.end method

.method private jjMoveNfa_1(II)I
    .locals 11

    const/4 v2, 0x0

    const/16 v0, 0xc

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    move v7, v0

    move v8, v1

    move v9, v2

    :goto_0
    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjround:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->ReInitRounds()V

    :cond_0
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v1, 0x40

    if-ge v0, v1, :cond_e

    const-wide/16 v0, 0x1

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    shl-long/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v2, v2, v8

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    if-ne v8, v9, :cond_1

    move v0, v7

    :goto_2
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    iput v9, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v9, 0xc

    if-ne v1, v2, :cond_18

    :goto_3
    return p2

    :pswitch_1
    const-wide/high16 v2, 0x3fe000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    const/16 v2, 0x39

    if-le v7, v2, :cond_4

    const/16 v7, 0x39

    :cond_4
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_5
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0xa

    aput v4, v2, v3

    goto :goto_1

    :cond_6
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-ne v2, v3, :cond_7

    const/16 v2, 0x3a

    if-le v7, v2, :cond_2

    const/16 v7, 0x3a

    goto :goto_1

    :cond_7
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x24

    if-ne v2, v3, :cond_9

    const/16 v2, 0x36

    if-le v7, v2, :cond_8

    const/16 v7, 0x36

    :cond_8
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_9
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x23

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_1

    :pswitch_2
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_1

    :pswitch_3
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x24

    if-ne v2, v3, :cond_2

    const/16 v2, 0x36

    if-le v7, v2, :cond_a

    const/16 v7, 0x36

    :cond_a
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_4
    const-wide v2, 0x3ff00100fffc1ffL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x36

    if-le v7, v2, :cond_b

    const/16 v7, 0x36

    :cond_b
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_5
    const-wide/high16 v2, 0x3fe000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x39

    if-le v7, v2, :cond_c

    const/16 v7, 0x39

    :cond_c
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_6
    const-wide/high16 v2, 0x3ff000000000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/16 v2, 0x39

    if-le v7, v2, :cond_d

    const/16 v7, 0x39

    :cond_d
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :pswitch_7
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    const/16 v2, 0x3a

    if-le v7, v2, :cond_2

    const/16 v7, 0x3a

    goto/16 :goto_1

    :pswitch_8
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/16 v4, 0xa

    aput v4, v2, v3

    goto/16 :goto_1

    :cond_e
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v1, 0x80

    if-ge v0, v1, :cond_13

    const-wide/16 v0, 0x1

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    and-int/lit8 v2, v2, 0x3f

    shl-long/2addr v0, v2

    :cond_f
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v2, v2, v8

    packed-switch v2, :pswitch_data_1

    :cond_10
    :goto_4
    :pswitch_9
    if-ne v8, v9, :cond_f

    move v0, v7

    goto/16 :goto_2

    :pswitch_a
    const-wide v2, 0x7fffffe87fffffeL

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    const/16 v2, 0x36

    if-le v7, v2, :cond_11

    const/16 v7, 0x36

    :cond_11
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :pswitch_b
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x70

    if-ne v2, v3, :cond_10

    const/4 v2, 0x3

    if-le v7, v2, :cond_10

    const/4 v7, 0x3

    goto :goto_4

    :pswitch_c
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x6d

    if-ne v2, v3, :cond_10

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/4 v4, 0x2

    aput v4, v2, v3

    goto :goto_4

    :pswitch_d
    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v3, 0x6f

    if-ne v2, v3, :cond_10

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    const/4 v4, 0x3

    aput v4, v2, v3

    goto :goto_4

    :pswitch_e
    const-wide v2, -0x7800000178000002L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    const/16 v2, 0x36

    if-le v7, v2, :cond_12

    const/16 v7, 0x36

    :cond_12
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :cond_13
    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    shr-int/lit8 v0, v0, 0x8

    shr-int/lit8 v1, v0, 0x6

    const-wide/16 v2, 0x1

    and-int/lit8 v4, v0, 0x3f

    shl-long v3, v2, v4

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x6

    const-wide/16 v5, 0x1

    iget-char v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    and-int/lit8 v10, v10, 0x3f

    shl-long/2addr v5, v10

    :cond_14
    iget-object v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstateSet:[I

    add-int/lit8 v8, v8, -0x1

    aget v10, v10, v8

    sparse-switch v10, :sswitch_data_0

    :cond_15
    :goto_5
    if-ne v8, v9, :cond_14

    move v0, v7

    goto/16 :goto_2

    :sswitch_0
    invoke-static/range {v0 .. v6}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_15

    const/16 v10, 0x36

    if-le v7, v10, :cond_16

    const/16 v7, 0x36

    :cond_16
    const/4 v10, 0x6

    invoke-direct {p0, v10}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    :sswitch_1
    invoke-static/range {v0 .. v6}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCanMove_2(IIIJJ)Z

    move-result v10

    if-eqz v10, :cond_15

    const/16 v10, 0x36

    if-le v7, v10, :cond_17

    const/16 v7, 0x36

    :cond_17
    const/4 v10, 0x6

    invoke-direct {p0, v10}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    :cond_18
    :try_start_0
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v0

    move v8, v1

    move v9, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_9
        :pswitch_e
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa0_0()I
    .locals 6

    const-wide/32 v4, 0x20000000

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x3d

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x3e

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x40

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x3f

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_4
    const/16 v0, 0xba

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x3c

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x96

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_7
    const/16 v0, 0xa9

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_8
    const/16 v0, 0xa6

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x800080000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x8a

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_a
    const/16 v0, 0x8b

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_b
    const/16 v0, 0xa4

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x200000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_c
    const/16 v0, 0xa2

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x80100000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_d
    const/16 v0, 0x91

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_e
    const/16 v0, 0xa3

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x100200000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0x92

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v0, 0x40000000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_10
    const/16 v0, 0xa5

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide/16 v0, 0x4

    const-wide v2, 0x400000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0x99

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_12
    const/16 v0, 0x90

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_13
    const/16 v0, 0x95

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x8040008000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_14
    const/16 v0, 0x94

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_15
    const/16 v0, 0xb9

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x1b0000010000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_16
    const/16 v0, 0x98

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_17
    const/16 v0, 0x93

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_18
    const/16 v0, 0x8e

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_19
    const/16 v0, 0x8f

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_1a
    const/16 v0, 0xa8

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v0, 0x2000000000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_1b
    const-wide/16 v0, 0x180

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_1c
    const-wide/16 v0, 0xe00

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_1d
    const-wide/32 v0, 0x3f000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_1e
    const-wide/32 v0, 0x1c0000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_1f
    const-wide/32 v0, 0xe00000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_20
    const-wide/32 v0, 0x1f000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_21
    invoke-direct {p0, v4, v5, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_22
    const-wide v0, 0xfc0000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_23
    const-wide v0, 0x1000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_24
    const-wide v0, 0xe000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_25
    const-wide v0, 0xf0000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_26
    const-wide v0, 0x100000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_27
    const-wide v0, 0x7e00000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_28
    const-wide/high16 v0, 0x1f8000000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_29
    const-wide/high16 v0, 0x600000000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_2a
    const-wide/high16 v0, 0x800000000000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_2b
    const/16 v0, 0x8c

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_2c
    const/16 v0, 0xa7

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x1000040000000L

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_2d
    const/16 v0, 0x8d

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_2e
    const/16 v0, 0x97

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
        0x21 -> :sswitch_6
        0x25 -> :sswitch_7
        0x26 -> :sswitch_8
        0x28 -> :sswitch_9
        0x29 -> :sswitch_a
        0x2a -> :sswitch_b
        0x2b -> :sswitch_c
        0x2c -> :sswitch_d
        0x2d -> :sswitch_e
        0x2e -> :sswitch_f
        0x2f -> :sswitch_10
        0x3a -> :sswitch_11
        0x3b -> :sswitch_12
        0x3c -> :sswitch_13
        0x3d -> :sswitch_14
        0x3e -> :sswitch_15
        0x3f -> :sswitch_16
        0x40 -> :sswitch_17
        0x5b -> :sswitch_18
        0x5d -> :sswitch_19
        0x5e -> :sswitch_1a
        0x61 -> :sswitch_1b
        0x62 -> :sswitch_1c
        0x63 -> :sswitch_1d
        0x64 -> :sswitch_1e
        0x65 -> :sswitch_1f
        0x66 -> :sswitch_20
        0x67 -> :sswitch_21
        0x69 -> :sswitch_22
        0x6c -> :sswitch_23
        0x6e -> :sswitch_24
        0x70 -> :sswitch_25
        0x72 -> :sswitch_26
        0x73 -> :sswitch_27
        0x74 -> :sswitch_28
        0x76 -> :sswitch_29
        0x77 -> :sswitch_2a
        0x7b -> :sswitch_2b
        0x7c -> :sswitch_2c
        0x7d -> :sswitch_2d
        0x7e -> :sswitch_2e
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa0_1()I
    .locals 2

    const/4 v1, 0x0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x31

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide v0, 0x800000000000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x28

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x29

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x2e

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x2c

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x2a

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x2d

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_a
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto :goto_0

    :sswitch_b
    const/16 v0, 0x2b

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_c
    const/16 v0, 0x33

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_d
    const-wide v0, 0x2000000000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto :goto_0

    :sswitch_e
    const-wide/16 v0, 0x400

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto :goto_0

    :sswitch_f
    const-wide v0, 0x204006000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto :goto_0

    :sswitch_10
    const-wide v0, 0x808000000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_0

    :sswitch_11
    const-wide/32 v0, 0x21001000

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_0

    :sswitch_12
    const-wide v0, 0x1000000000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_0

    :sswitch_13
    const-wide v0, 0x80000000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_0

    :sswitch_14
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_0

    :sswitch_15
    const-wide v0, 0x30000040000800L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_0

    :sswitch_16
    const-wide v0, 0x8100080000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_0

    :sswitch_17
    const-wide/32 v0, 0x10000000

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_0

    :sswitch_18
    const-wide/32 v0, 0x100080

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_0

    :sswitch_19
    const-wide v0, 0x4000200000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_0

    :sswitch_1a
    const-wide v0, 0x400c08300L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_0

    :sswitch_1b
    const-wide/32 v0, 0x70000

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_0

    :sswitch_1c
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const-wide/high16 v0, 0x1000000000000L

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_1(J)I

    move-result v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xc -> :sswitch_1
        0x20 -> :sswitch_2
        0x26 -> :sswitch_3
        0x28 -> :sswitch_4
        0x29 -> :sswitch_5
        0x2a -> :sswitch_6
        0x2b -> :sswitch_7
        0x2c -> :sswitch_8
        0x2d -> :sswitch_9
        0x2f -> :sswitch_a
        0x3a -> :sswitch_b
        0x5e -> :sswitch_c
        0x61 -> :sswitch_d
        0x62 -> :sswitch_e
        0x63 -> :sswitch_f
        0x64 -> :sswitch_10
        0x66 -> :sswitch_11
        0x67 -> :sswitch_12
        0x69 -> :sswitch_13
        0x6c -> :sswitch_14
        0x6d -> :sswitch_15
        0x6e -> :sswitch_16
        0x6f -> :sswitch_17
        0x70 -> :sswitch_18
        0x72 -> :sswitch_19
        0x73 -> :sswitch_1a
        0x74 -> :sswitch_1b
        0x7c -> :sswitch_1c
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa0_2()I
    .locals 2

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const-wide/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_2(J)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_3()I
    .locals 2

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    const-wide/16 v0, 0x20

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa1_3(J)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa10_0(JJ)I
    .locals 8

    const/16 v1, 0x9

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    const/16 v1, 0x8

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/16 v0, 0xa

    goto :goto_0

    :pswitch_0
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa11_0(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa10_1(JJ)I
    .locals 9

    const/16 v8, 0x9

    const/4 v7, 0x6

    const-wide/16 v5, 0x0

    const/16 v0, 0xa

    and-long v1, p3, p1

    cmp-long v3, v1, v5

    if-nez v3, :cond_0

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v3, :sswitch_data_0

    :cond_1
    invoke-direct {p0, v8, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-direct {p0, v8, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_0

    :sswitch_0
    const-wide/32 v3, 0x2000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    const/16 v1, 0x19

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :cond_2
    const-wide/32 v3, 0x4000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const-wide v3, 0x100000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const-wide/32 v3, 0x1000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa11_1(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x73 -> :sswitch_1
        0x74 -> :sswitch_2
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa11_0(JJ)I
    .locals 9

    const/16 v8, 0xb

    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    const/16 v1, 0x9

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    :cond_1
    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move v0, v8

    goto :goto_0

    :pswitch_0
    const-wide/high16 v6, 0x4000000000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x72

    const/16 v1, 0x1c

    invoke-direct {p0, v8, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa11_1(JJ)I
    .locals 8

    const-wide/16 v6, 0x0

    const/16 v0, 0xb

    const/16 v5, 0xa

    and-long v1, p3, p1

    cmp-long v3, v1, v6

    if-nez v3, :cond_0

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v3, :pswitch_data_0

    :cond_1
    invoke-direct {p0, v5, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-direct {p0, v5, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_0

    :pswitch_0
    const-wide/32 v3, 0x1000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_1

    const/16 v1, 0x18

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa1_0(JJ)I
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_0
    const-wide v0, 0x80000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x9f

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const-wide/16 v0, 0x4

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x42

    const/16 v2, 0x38

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const-wide v0, 0x100000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0xa0

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const-wide v0, 0x200000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0xa1

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_4
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x40000000000000L

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto :goto_0

    :sswitch_5
    const-wide v0, 0x40000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0xaa

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_1
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x8000000000000L

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_6
    const-wide/32 v0, 0x4000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/16 v1, 0x9a

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_2
    const-wide/32 v0, 0x8000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    const/16 v1, 0x9b

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_3
    const-wide/32 v0, 0x10000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    const/16 v1, 0x9c

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_4
    const-wide/32 v0, 0x20000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    const/16 v1, 0x9d

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    const-wide v0, 0x80000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    const/16 v1, 0xab

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_6
    const-wide v0, 0x100000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    const/16 v1, 0xac

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    const-wide v0, 0x200000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    const/16 v1, 0xad

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_8
    const-wide v0, 0x400000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    const/16 v1, 0xae

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_9
    const-wide v0, 0x800000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    const/16 v1, 0xaf

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_a
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    const/16 v1, 0xb0

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_b
    const-wide/high16 v0, 0x2000000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    const/16 v1, 0xb1

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :cond_c
    const-wide/high16 v0, 0x4000000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0xb2

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_7
    const-wide/high16 v0, 0x100000000000000L

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/16 v0, 0xb8

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_d
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0xb0000000000000L

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_8
    const-wide v3, 0x12001003000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_9
    const-wide/16 v3, 0x80

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_a
    const-wide v3, 0x104000040000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_b
    const-wide/32 v0, 0x40000000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x5e

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_0

    :sswitch_c
    const-wide v3, 0x838200000004000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_d
    const-wide/32 v3, 0x6000000

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_e
    const-wide/32 v3, 0x8208000

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_f
    const-wide v3, 0x180000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_10
    const-wide v3, 0xe00400000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_11
    const-wide/32 v0, 0x80000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/16 v0, 0x53

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_e
    const-wide v3, 0x600001030130200L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_12
    const-wide v3, 0x1c0060000000400L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_13
    const-wide/16 v3, 0x100

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_14
    const-wide v3, 0xc00000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_15
    const-wide v3, 0x1088000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_16
    const-wide/high16 v3, 0x2000000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_17
    const-wide/32 v3, 0x800000

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_18
    const-wide v3, 0x4000000000800L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_19
    const-wide/32 v0, 0x40000000

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x9e

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x2a -> :sswitch_1
        0x2b -> :sswitch_2
        0x2d -> :sswitch_3
        0x2e -> :sswitch_4
        0x3c -> :sswitch_5
        0x3d -> :sswitch_6
        0x3e -> :sswitch_7
        0x61 -> :sswitch_8
        0x62 -> :sswitch_9
        0x65 -> :sswitch_a
        0x66 -> :sswitch_b
        0x68 -> :sswitch_c
        0x69 -> :sswitch_d
        0x6c -> :sswitch_e
        0x6d -> :sswitch_f
        0x6e -> :sswitch_10
        0x6f -> :sswitch_11
        0x72 -> :sswitch_12
        0x73 -> :sswitch_13
        0x74 -> :sswitch_14
        0x75 -> :sswitch_15
        0x77 -> :sswitch_16
        0x78 -> :sswitch_17
        0x79 -> :sswitch_18
        0x7c -> :sswitch_19
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa1_1(J)I
    .locals 6

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_0

    :cond_0
    invoke-direct {p0, v5, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-direct {p0, v5, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_0

    :sswitch_0
    const-wide v1, 0x800000000000L

    and-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/16 v1, 0x2f

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const-wide/16 v1, 0x4

    and-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const-wide v0, 0x20000002072c80L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const-wide/32 v0, 0x800000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_4
    const-wide/32 v0, 0x48200300

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_5
    const-wide v1, 0x80000000L

    and-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/16 v1, 0x1f

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :sswitch_6
    const-wide/32 v0, 0x400000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_7
    const-wide v0, 0x10000021008000L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_8
    const-wide v0, 0x8204081000L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_9
    const-wide/32 v0, 0x10104000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_a
    const-wide v0, 0x400000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_b
    const-wide v0, 0x7100000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_c
    const-wide v0, 0x800000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa2_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :sswitch_d
    const-wide/high16 v1, 0x1000000000000L

    and-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/16 v1, 0x30

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x2f -> :sswitch_1
        0x61 -> :sswitch_2
        0x63 -> :sswitch_3
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6f -> :sswitch_8
        0x72 -> :sswitch_9
        0x74 -> :sswitch_a
        0x75 -> :sswitch_b
        0x79 -> :sswitch_c
        0x7c -> :sswitch_d
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa1_2(J)I
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :pswitch_0
    const-wide/16 v2, 0x10

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/16 v0, 0x44

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa1_3(J)I
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :pswitch_0
    const-wide/16 v2, 0x20

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/16 v0, 0x45

    invoke-direct {p0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa2_0(JJJJ)I
    .locals 18

    and-long v5, p3, p1

    and-long v7, p7, p5

    or-long v1, v5, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_0

    :cond_1
    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_0
    const-wide/high16 v1, 0x40000000000000L

    and-long/2addr v1, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    const/16 v2, 0xb6

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    :sswitch_1
    const-wide/high16 v1, 0x8000000000000L

    and-long/2addr v1, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    const/16 v2, 0xb3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    :cond_2
    const-wide/high16 v1, 0x10000000000000L

    and-long/2addr v1, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    const/16 v2, 0xb4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    :sswitch_2
    const-wide/high16 v1, 0x80000000000000L

    and-long/2addr v1, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    const/16 v1, 0xb7

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_3
    const-wide/16 v12, 0x0

    const-wide/high16 v16, 0x20000000000000L

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_3
    const-wide v12, 0x4040000000c000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_4
    const-wide v12, 0x80000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_5
    const-wide v12, 0x10000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_6
    const-wide/16 v12, 0x400

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_7
    const-wide/32 v12, 0x40000

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_8
    const-wide v12, 0xa0a020000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_9
    const-wide v12, 0x400008001000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_a
    const-wide v12, 0x4001006030000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_b
    const-wide v12, 0x240008000200L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_c
    const-wide v12, 0x1000180000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_d
    const-wide/32 v1, 0x10000000

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    const/16 v2, 0x5c

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_0

    :cond_4
    const-wide v12, 0x30800000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_e
    const-wide v12, 0x200201180L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_f
    const-wide v1, 0x400000000L

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    const/16 v1, 0x62

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_5
    const-wide v12, 0x102820802800L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_10
    const-wide v12, 0x80000000500000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_11
    const-wide v1, 0x4000000000L

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    const/16 v2, 0x66

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_0

    :sswitch_12
    const-wide/high16 v1, 0x100000000000000L

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    const/16 v2, 0x78

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_0
        0x3d -> :sswitch_1
        0x3e -> :sswitch_2
        0x61 -> :sswitch_3
        0x62 -> :sswitch_4
        0x63 -> :sswitch_5
        0x65 -> :sswitch_6
        0x66 -> :sswitch_7
        0x69 -> :sswitch_8
        0x6c -> :sswitch_9
        0x6e -> :sswitch_a
        0x6f -> :sswitch_b
        0x70 -> :sswitch_c
        0x72 -> :sswitch_d
        0x73 -> :sswitch_e
        0x74 -> :sswitch_f
        0x75 -> :sswitch_10
        0x77 -> :sswitch_11
        0x79 -> :sswitch_12
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa2_1(JJ)I
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x6

    const-wide/16 v5, 0x0

    const/4 v0, 0x2

    and-long v1, p3, p1

    cmp-long v3, v1, v5

    if-nez v3, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v3, :pswitch_data_0

    :cond_1
    :pswitch_0
    invoke-direct {p0, v8, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-direct {p0, v8, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_0

    :pswitch_1
    const-wide v3, 0x400400000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_2
    const-wide/16 v3, 0x300

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const-wide/32 v3, 0x10200000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_4
    const-wide/32 v3, 0x8000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_5
    const-wide/32 v3, 0x800000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_6
    const-wide v3, 0x1000104000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_7
    const-wide v3, 0x200000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_8
    const-wide v3, 0x100000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_9
    const-wide/high16 v3, 0x10000000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    const/16 v1, 0x34

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :cond_2
    const-wide v3, 0xc82000a000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_a
    const-wide/32 v3, 0x4000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_b
    const-wide/16 v3, 0x1000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_0

    :cond_3
    const-wide/32 v3, 0x41000480

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_c
    const-wide/32 v3, 0x2070800

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_d
    const-wide v3, 0x2000000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_e
    const-wide/32 v3, 0x80000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa3_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_f
    const-wide/high16 v3, 0x20000000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    const/16 v1, 0x35

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa3_0(JJJJ)I
    .locals 18

    and-long v5, p3, p1

    and-long v7, p7, p5

    or-long v1, v5, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v1

    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_0

    :cond_1
    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_0
    const-wide/high16 v1, 0x20000000000000L

    and-long/2addr v1, v7

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    const/16 v2, 0xb5

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    :sswitch_1
    const-wide v12, 0x40000000e040400L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto :goto_0

    :sswitch_2
    const-wide/32 v12, 0x100000

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto :goto_0

    :sswitch_3
    const-wide v12, 0x4000000002000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto :goto_0

    :sswitch_4
    const-wide/high16 v1, 0x200000000000000L

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    const/16 v2, 0x79

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_0

    :sswitch_5
    const-wide/16 v1, 0x800

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    const/16 v2, 0x4b

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_0

    :cond_2
    const-wide/16 v1, 0x1000

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    const/16 v2, 0x4c

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_0

    :cond_3
    const-wide/32 v1, 0x200000

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    const/16 v2, 0x55

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_0

    :cond_4
    const-wide/high16 v1, 0x80000000000000L

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    const/16 v2, 0x77

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_0

    :cond_5
    const-wide v12, 0x1000800800100L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_6
    const-wide v1, 0x1000000000L

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    const/16 v2, 0x64

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_0

    :sswitch_7
    const-wide v12, 0x802000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_8
    const-wide v12, 0x10000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_9
    const-wide v1, 0x8000000000L

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    const/16 v2, 0x67

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_0

    :cond_6
    const-wide v12, 0x800080080000200L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_a
    const-wide/32 v1, 0x400000

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    const/16 v2, 0x56

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_0

    :sswitch_b
    const-wide/high16 v12, 0x40000000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_c
    const-wide/32 v1, 0x20000000

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    const/4 v1, 0x3

    const/16 v2, 0x5d

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_0

    :cond_7
    const-wide v12, 0x30000100000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_d
    const-wide/16 v1, 0x4000

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_8

    const/4 v1, 0x3

    const/16 v2, 0x4e

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_0

    :cond_8
    const-wide v12, 0x200000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_e
    const-wide/high16 v1, 0x8000000000000L

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    const/4 v1, 0x3

    const/16 v2, 0x73

    const/16 v3, 0x1c

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto/16 :goto_0

    :cond_9
    const-wide/32 v12, 0x1018000

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_f
    const-wide v12, 0x2440200020080L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_10
    const-wide v12, 0x100000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    :sswitch_11
    const-wide v12, 0x20000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v9, p0

    move-wide v10, v5

    move-wide v14, v7

    invoke-direct/range {v9 .. v17}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJ)I

    move-result v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_0
        0x61 -> :sswitch_1
        0x62 -> :sswitch_2
        0x63 -> :sswitch_3
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x67 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6b -> :sswitch_8
        0x6c -> :sswitch_9
        0x6d -> :sswitch_a
        0x6e -> :sswitch_b
        0x6f -> :sswitch_c
        0x72 -> :sswitch_d
        0x73 -> :sswitch_e
        0x74 -> :sswitch_f
        0x75 -> :sswitch_10
        0x76 -> :sswitch_11
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa3_1(JJ)I
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x2

    const-wide/16 v5, 0x0

    const/4 v0, 0x3

    and-long v1, p3, p1

    cmp-long v3, v1, v5

    if-nez v3, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v3, :pswitch_data_0

    :cond_1
    :pswitch_0
    invoke-direct {p0, v7, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-direct {p0, v7, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_0

    :pswitch_1
    const-wide v3, 0x100000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_2
    const-wide v3, 0x828080080L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const-wide/16 v3, 0x2000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_4
    const-wide v3, 0x1000000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_5
    const-wide v3, 0x8000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    const/16 v1, 0x27

    invoke-direct {p0, v0, v1, v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :cond_2
    const-wide/32 v3, 0x10800000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_6
    const-wide/32 v3, 0x40008000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_7
    const-wide/32 v3, 0x10000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    const/16 v3, 0x10

    iput v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_3
    const-wide/32 v3, 0x60000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_8
    const-wide v3, 0x200000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_9
    const-wide v3, 0x2000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    const/16 v1, 0x25

    invoke-direct {p0, v0, v1, v8}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_0

    :pswitch_a
    const-wide/32 v3, 0x400400

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_b
    const-wide/32 v3, 0x1000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_c
    const-wide v3, 0x4402004b00L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_d
    const-wide/32 v3, 0x200000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_e
    const-wide/32 v3, 0x100000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_f
    const-wide/32 v3, 0x4000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa4_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa4_0(JJJJ)I
    .locals 8

    and-long v4, p3, p1

    and-long v0, p7, p5

    or-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    :cond_1
    :pswitch_0
    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    const/4 v0, 0x4

    goto :goto_0

    :pswitch_1
    const-wide v0, 0x30200000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_2
    const-wide v0, 0x2800000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const-wide/32 v0, 0x1000000

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    const/16 v1, 0x58

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x800000000000000L

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    const/16 v1, 0x7b

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :cond_3
    const-wide v0, 0x40080000200L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_4
    const-wide/16 v0, 0x2000

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    const/16 v1, 0x4d

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :cond_4
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_5
    const-wide v0, 0x480000020000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_6
    const-wide/16 v0, 0x400

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    const/16 v1, 0x4a

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_0

    :pswitch_7
    const-wide/32 v0, 0x2000000

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    const/16 v0, 0x59

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_5
    const-wide/32 v0, 0x4100000

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_8
    const-wide/32 v0, 0x800000

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_9
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    const/16 v1, 0x70

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_0

    :cond_6
    const-wide v0, 0x100900000180L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_a
    const-wide/32 v0, 0x8000

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    const/16 v1, 0x4f

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    const-wide/high16 v0, 0x40000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_b
    const-wide/32 v0, 0x10000

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    const/16 v1, 0x50

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_0

    :cond_8
    const-wide/32 v0, 0x8000000

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    const/16 v1, 0x5b

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_0

    :cond_9
    const-wide v0, 0x200000000000L

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    const/16 v1, 0x6d

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_0

    :cond_a
    const-wide/high16 v0, 0x400000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_c
    const-wide/32 v0, 0x40000

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_d
    const-wide v0, 0x2000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_e
    const-wide/high16 v0, 0x10000000000000L

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/16 v0, 0x74

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_b
    const-wide/high16 v0, 0x20000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa4_1(JJ)I
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v0, 0x4

    const/4 v4, 0x3

    and-long v1, p3, p1

    cmp-long v3, v1, v5

    if-nez v3, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, v4, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-direct {p0, v4, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_0

    :pswitch_1
    const-wide v3, 0x200100000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_2
    const-wide/32 v3, 0x200000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const-wide/32 v3, 0x800000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_4
    const-wide v3, 0x1040402800L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_5
    const-wide v3, 0x4400084700L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_6
    const-wide/32 v3, 0x20000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    const/16 v1, 0x1d

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :cond_1
    const-wide/32 v3, 0x8080

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_7
    const-wide v3, 0x800000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_8
    const-wide/32 v3, 0x6000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_9
    const-wide/32 v3, 0x10000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_a
    const-wide v3, 0x101000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_b
    const-wide/32 v3, 0x8000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_c
    const-wide/32 v3, 0x20000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_d
    const-wide/32 v3, 0x40000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa5_1(JJ)I

    move-result v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa5_0(JJ)I
    .locals 10

    const/4 v1, 0x4

    const/16 v9, 0x1c

    const/4 v8, 0x5

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    const/4 v1, 0x3

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    :cond_1
    :pswitch_0
    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move v0, v8

    goto :goto_0

    :pswitch_1
    const-wide/16 v0, 0x280

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_2
    const-wide v0, 0x80000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x6b

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :cond_2
    const-wide v0, 0x400000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/16 v0, 0x6e

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :cond_3
    const-wide v0, 0x40000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const-wide/32 v0, 0x800000

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_4
    const-wide/32 v6, 0x100000

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_4

    const/16 v0, 0x54

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :cond_4
    const-wide v6, 0x2000000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x65

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :pswitch_5
    const-wide v0, 0x800000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_6
    const-wide v0, 0x10000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_7
    const-wide/high16 v6, 0x2000000000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x71

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_0

    :pswitch_8
    const-wide/high16 v0, 0x440000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_9
    const-wide/32 v0, 0x4040000

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_a
    const-wide v0, 0x80000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_b
    const-wide v0, 0x100000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    const/16 v0, 0x6c

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    const-wide v0, 0x200020000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_c
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_d
    const-wide/high16 v6, 0x20000000000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x75

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_0

    :pswitch_e
    const-wide/16 v0, 0x100

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    const/16 v0, 0x48

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_0

    :cond_6
    const-wide v0, 0x100000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    const/16 v0, 0x60

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    const-wide v0, 0x820000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa5_1(JJ)I
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x6

    const-wide/16 v5, 0x0

    const/4 v0, 0x5

    and-long v1, p3, p1

    cmp-long v3, v1, v5

    if-nez v3, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v3, :pswitch_data_0

    :cond_1
    :pswitch_0
    invoke-direct {p0, v8, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-direct {p0, v8, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_0

    :pswitch_1
    const-wide/32 v3, 0x40020000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_2
    const-wide v3, 0x400000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x4000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const-wide/32 v3, 0x400000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :cond_3
    const-wide v3, 0x1000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    const/16 v1, 0x24

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :pswitch_4
    const-wide/32 v3, 0x8000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :cond_4
    const-wide/32 v3, 0x10000400

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_5
    const-wide v3, 0x100000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_6
    const-wide v3, 0x800040000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_7
    const-wide/16 v3, 0x2000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    const-wide/32 v3, 0x8000080

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_8
    const-wide v3, 0x4000000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_9
    const-wide/16 v3, 0x300

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_a
    const-wide v3, 0x201000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_b
    const-wide/16 v3, 0x800

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_0

    :cond_6
    const-wide/32 v3, 0x6000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_c
    const-wide/32 v3, 0x80000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    const/16 v1, 0x13

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    const-wide/32 v3, 0x300000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_d
    const-wide/32 v3, 0x800000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa6_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa6_0(JJ)I
    .locals 10

    const/4 v1, 0x5

    const/16 v9, 0x1c

    const/4 v8, 0x6

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    const/4 v1, 0x4

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    :cond_1
    :pswitch_0
    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move v0, v8

    goto :goto_0

    :pswitch_1
    const-wide v0, 0x800000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_2
    const-wide v0, 0x200000080L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const-wide v0, 0x10000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x68

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :cond_2
    const-wide v0, 0x20000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/16 v0, 0x69

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :cond_3
    const-wide v0, 0x40000080000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_4
    const-wide v0, 0x800000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_5
    const-wide/high16 v0, 0x400000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_6
    const-wide/16 v6, 0x200

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x49

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :pswitch_7
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_8
    const-wide/32 v6, 0x800000

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x57

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_0

    :pswitch_9
    const-wide/32 v0, 0x40000

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    const/16 v0, 0x52

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_0

    :cond_4
    const-wide v0, 0x40000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_a
    const-wide/32 v0, 0x20000

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_b
    const-wide/32 v6, 0x4000000

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x5a

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa6_1(JJ)I
    .locals 8

    const/4 v7, 0x5

    const-wide/16 v5, 0x0

    const/4 v0, 0x6

    and-long v1, p3, p1

    cmp-long v3, v1, v5

    if-nez v3, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    packed-switch v3, :pswitch_data_0

    :cond_1
    :pswitch_0
    invoke-direct {p0, v7, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-direct {p0, v7, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_0

    :pswitch_1
    const-wide/16 v3, 0x4000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_2
    const-wide/32 v3, 0x40000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const-wide v3, 0x800000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    const/16 v1, 0x23

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :pswitch_4
    const-wide/32 v3, 0x10000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    const/16 v1, 0x1c

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :pswitch_5
    const-wide/32 v3, 0x100000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :cond_2
    const-wide v3, 0x4000000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    const/16 v1, 0x26

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :cond_3
    const-wide/32 v3, 0x40080

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_6
    const-wide/32 v3, 0x6220000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_7
    const-wide/32 v3, 0x800000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    goto :goto_0

    :pswitch_8
    const-wide/16 v3, 0x200

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    const/16 v3, 0x9

    iput v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_4
    const-wide/16 v3, 0x100

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_9
    const-wide/16 v3, 0x400

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    const-wide v3, 0x101000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_a
    const-wide v3, 0x200000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa7_1(JJ)I

    move-result v0

    goto/16 :goto_0

    :pswitch_b
    const-wide/32 v3, 0x8000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa7_0(JJ)I
    .locals 10

    const/4 v1, 0x6

    const/16 v9, 0x1c

    const/4 v8, 0x7

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    const/4 v1, 0x5

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move v0, v8

    goto :goto_0

    :sswitch_0
    const-wide v0, 0x800000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_0(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const-wide/32 v0, 0x20000

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x51

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x400000000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/16 v0, 0x7a

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :cond_3
    const-wide v0, 0x40200000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_0(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const-wide v0, 0x44000080000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_0(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const-wide v6, 0x800000000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x6f

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :sswitch_4
    const-wide/16 v6, 0x80

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x47

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_0
        0x65 -> :sswitch_1
        0x6e -> :sswitch_2
        0x70 -> :sswitch_3
        0x74 -> :sswitch_4
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa7_1(JJ)I
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x7

    const/4 v5, 0x6

    and-long v1, p3, p1

    cmp-long v3, v1, v6

    if-nez v3, :cond_0

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v3, :sswitch_data_0

    :cond_1
    invoke-direct {p0, v5, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-direct {p0, v5, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_0

    :sswitch_0
    const-wide/32 v3, 0x800000

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_2

    const/16 v1, 0x17

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :cond_2
    const-wide v3, 0x200000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_3

    const/16 v1, 0x21

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :cond_3
    const-wide v3, 0x100000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_1(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const-wide/32 v3, 0x1000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_1(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const-wide/16 v3, 0x80

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_4

    invoke-direct {p0, v0, v0, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :cond_4
    const-wide/16 v3, 0x4000

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_5

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :cond_5
    const-wide/32 v3, 0x40040000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_1(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const-wide/32 v3, 0x200000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_1(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_4
    const-wide/16 v3, 0x100

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_1

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_0

    :sswitch_5
    const-wide/32 v3, 0x20000

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_1

    const/16 v1, 0x11

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto/16 :goto_0

    :sswitch_6
    const-wide/32 v3, 0x6000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa8_1(JJ)I

    move-result v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x69 -> :sswitch_1
        0x6c -> :sswitch_2
        0x6f -> :sswitch_3
        0x73 -> :sswitch_4
        0x74 -> :sswitch_5
        0x76 -> :sswitch_6
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa8_0(JJ)I
    .locals 10

    const/4 v1, 0x7

    const/16 v9, 0x1c

    const/16 v8, 0x8

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    const/4 v1, 0x6

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move v0, v8

    goto :goto_0

    :sswitch_0
    const-wide v6, 0x40000000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x6a

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const-wide v6, 0x800000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x63

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa9_0(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const-wide v0, 0x200000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa9_0(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_4
    const-wide/high16 v0, 0x40000000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/16 v0, 0x76

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :cond_2
    const-wide v0, 0x80000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa9_0(JJ)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x69 -> :sswitch_2
        0x6f -> :sswitch_3
        0x74 -> :sswitch_4
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa8_1(JJ)I
    .locals 9

    const/4 v8, 0x7

    const-wide/16 v6, 0x0

    const/16 v0, 0x8

    const/4 v5, 0x6

    and-long v1, p3, p1

    cmp-long v3, v1, v6

    if-nez v3, :cond_0

    invoke-direct {p0, v5, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v3, :sswitch_data_0

    :cond_1
    invoke-direct {p0, v8, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-direct {p0, v8, v1, v2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    goto :goto_0

    :sswitch_0
    const-wide v3, 0x106000000L

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa9_1(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const-wide/32 v3, 0x40000

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_1

    const/16 v1, 0x12

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const-wide/32 v3, 0x40000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_1

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :sswitch_3
    const-wide/32 v3, 0x200000

    and-long/2addr v3, v1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_1

    const/16 v1, 0x15

    invoke-direct {p0, v0, v1, v5}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_1(III)I

    move-result v0

    goto :goto_0

    :sswitch_4
    const-wide/32 v3, 0x1000000

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa9_1(JJ)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x6e -> :sswitch_3
        0x76 -> :sswitch_4
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa9_0(JJ)I
    .locals 10

    const/16 v9, 0x1c

    const/16 v1, 0x8

    const/16 v8, 0x9

    const-wide/16 v2, 0x0

    and-long v4, p3, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    const/4 v1, 0x7

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, p0

    move-wide v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move v0, v8

    goto :goto_0

    :sswitch_0
    const-wide v6, 0x200000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x61

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const-wide v6, 0x80000000L

    and-long/2addr v6, v4

    cmp-long v0, v6, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x5f

    invoke-direct {p0, v8, v0, v9}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const-wide/high16 v0, 0x4000000000000L

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa10_0(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x73 -> :sswitch_1
        0x7a -> :sswitch_2
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa9_1(JJ)I
    .locals 5

    const/16 v4, 0x8

    and-long v0, p3, p1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStartNfa_1(IJ)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_0
    const-wide/32 v2, 0x1000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa10_1(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_1
    const-wide v2, 0x100000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa10_1(JJ)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const-wide/32 v2, 0x6000000

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa10_1(JJ)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x64 -> :sswitch_1
        0x74 -> :sswitch_2
    .end sparse-switch
.end method

.method private jjStartNfaWithStates_0(III)I
    .locals 1

    iput p2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private jjStartNfaWithStates_1(III)I
    .locals 1

    iput p2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfa_0(IJJJ)I
    .locals 2

    invoke-direct/range {p0 .. p7}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private jjStopAtPos(II)I
    .locals 1

    iput p2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJJJ)I
    .locals 8

    const/4 v0, 0x4

    const/16 v7, 0x87

    const/4 v2, -0x1

    const/16 v1, 0x1c

    const-wide/16 v5, 0x0

    packed-switch p1, :pswitch_data_0

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const-wide v3, 0x40000000040000L

    and-long/2addr v3, p6

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    const-wide/16 v3, 0x4

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    const-wide v3, 0x402000000000L

    and-long/2addr v3, p6

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0x2d

    goto :goto_0

    :cond_2
    const-wide v3, 0xfffffffffffff80L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :pswitch_1
    const-wide v3, 0xfffffffbfe7ff80L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const-wide/32 v3, 0x40180000

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    const-wide/16 v0, 0x4

    and-long/2addr v0, p4

    cmp-long v0, v0, v5

    if-eqz v0, :cond_7

    const/16 v0, 0x38

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0

    :pswitch_2
    const-wide v3, 0x100004c10000000L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    const-wide v3, 0xeffffb3aff7ff80L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_9
    move v0, v1

    goto :goto_0

    :cond_a
    move v0, v2

    goto :goto_0

    :pswitch_3
    const-wide v3, 0x288009020605800L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_b

    move v0, v1

    goto/16 :goto_0

    :cond_b
    const-wide v3, 0xc77ff2b8f97a780L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_c

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto/16 :goto_0

    :pswitch_4
    const-wide v3, 0x446df2b80960380L

    and-long/2addr v3, p4

    cmp-long v3, v3, v5

    if-eqz v3, :cond_e

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-eq v2, v0, :cond_d

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    :cond_d
    move v0, v1

    goto/16 :goto_0

    :cond_e
    const-wide v3, 0x83120000f01a400L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_f
    move v0, v2

    goto/16 :goto_0

    :pswitch_5
    const-wide v3, 0x22582100100100L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_10

    move v0, v1

    goto/16 :goto_0

    :cond_10
    const-wide v3, 0x444870a84860280L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_11

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    move v0, v1

    goto/16 :goto_0

    :cond_11
    move v0, v2

    goto/16 :goto_0

    :pswitch_6
    const-wide v3, 0x30004840200L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_12

    move v0, v1

    goto/16 :goto_0

    :cond_12
    const-wide v3, 0x444840a80020080L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_13

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    move v0, v1

    goto/16 :goto_0

    :cond_13
    move v0, v2

    goto/16 :goto_0

    :pswitch_7
    const-wide v3, 0x44040a80000000L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_14

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    move v0, v1

    goto/16 :goto_0

    :cond_14
    const-wide v3, 0x400800000020080L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_15

    move v0, v1

    goto/16 :goto_0

    :cond_15
    move v0, v2

    goto/16 :goto_0

    :pswitch_8
    const-wide v3, 0x40040800000000L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_16

    move v0, v1

    goto/16 :goto_0

    :cond_16
    const-wide v3, 0x4000280000000L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_17

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    move v0, v1

    goto/16 :goto_0

    :cond_17
    move v0, v2

    goto/16 :goto_0

    :pswitch_9
    const-wide v3, 0x280000000L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_18

    move v0, v1

    goto/16 :goto_0

    :cond_18
    const-wide/high16 v3, 0x4000000000000L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_19

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    move v0, v1

    goto/16 :goto_0

    :cond_19
    move v0, v2

    goto/16 :goto_0

    :pswitch_a
    const-wide/high16 v3, 0x4000000000000L

    and-long/2addr v3, p4

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1a

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    move v0, v1

    goto/16 :goto_0

    :cond_1a
    move v0, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .locals 8

    const/4 v7, 0x3

    const/16 v6, 0x36

    const/4 v1, -0x1

    const-wide/16 v4, 0x0

    const/4 v0, 0x6

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const-wide v2, 0x3000ffffffff80L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_1
    const-wide v2, 0x80000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide v2, 0x3000ff7fffff80L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_2
    const-wide v2, 0x30000000001000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide v2, 0xff7fffef80L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_3
    const-wide v2, 0xa000070000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide v2, 0x5f7ff8ef80L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-eq v1, v7, :cond_0

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :pswitch_4
    const-wide/32 v2, 0x20000000

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide v2, 0x5f5ffeef80L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :pswitch_5
    const-wide v2, 0x140048a800L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide v2, 0x4b5fb64780L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_0

    :pswitch_6
    const-wide v2, 0x4818100700L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide v2, 0x347a64080L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-eq v1, v0, :cond_0

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto/16 :goto_0

    :pswitch_7
    const-wide v2, 0x200824180L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide v2, 0x147240000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x7

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :pswitch_8
    const-wide/32 v2, 0x40240000

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide v2, 0x107000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :pswitch_9
    const-wide v2, 0x107000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x9

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :pswitch_a
    const-wide v2, 0x106000000L

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const-wide/32 v2, 0x1000000

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_b

    iput v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method CommonTokenAction(Lcom/samsung/javaomp/compiler/Token;)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/samsung/javaomp/compiler/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method MoreLexicalActions()V
    .locals 3

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch
.end method

.method public ReInit(Lcom/samsung/javaomp/compiler/JavaCharStream;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->defaultLexState:I

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lcom/samsung/javaomp/compiler/JavaCharStream;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->ReInit(Lcom/samsung/javaomp/compiler/JavaCharStream;)V

    invoke-virtual {p0, p2}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method SkipLexicalActions(Lcom/samsung/javaomp/compiler/Token;)V
    .locals 4

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/javaomp/compiler/JavaParser;->inOMPComment:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public SwitchTo(I)V
    .locals 3

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Lcom/samsung/javaomp/compiler/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/javaomp/compiler/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    return-void
.end method

.method TokenLexicalActions(Lcom/samsung/javaomp/compiler/Token;)V
    .locals 7

    const/16 v6, 0xb8

    const/16 v5, 0xb7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    iget-object v1, p1, Lcom/samsung/javaomp/compiler/Token;->image:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    sput-boolean v4, Lcom/samsung/javaomp/compiler/JavaParser;->inOMPComment:Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    invoke-virtual {p0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v1, 0x1f

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    invoke-virtual {p0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v2, 0x20

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v1, 0x20

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    invoke-virtual {p0, v3}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v2, 0x8a

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v1, 0x8a

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    sget-boolean v0, Lcom/samsung/javaomp/compiler/JavaParser;->inOMPComment:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/javaomp/compiler/JavaParser;->parentheses:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/javaomp/compiler/JavaParser;->parentheses:I

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v2, 0x8b

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/16 v1, 0x8b

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    sget-boolean v0, Lcom/samsung/javaomp/compiler/JavaParser;->inOMPComment:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/javaomp/compiler/JavaParser;->parentheses:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/samsung/javaomp/compiler/JavaParser;->parentheses:I

    sget v0, Lcom/samsung/javaomp/compiler/JavaParser;->parentheses:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    const/16 v0, 0xb9

    iput v0, p1, Lcom/samsung/javaomp/compiler/Token;->kind:I

    move-object v0, p1

    check-cast v0, Lcom/samsung/javaomp/compiler/MyToken;

    iput v5, v0, Lcom/samsung/javaomp/compiler/MyToken;->realKind:I

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0, v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    const-string v0, ">"

    iput-object v0, p1, Lcom/samsung/javaomp/compiler/Token;->image:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->lengthOfMatch:I

    const/16 v0, 0xb9

    iput v0, p1, Lcom/samsung/javaomp/compiler/Token;->kind:I

    move-object v0, p1

    check-cast v0, Lcom/samsung/javaomp/compiler/MyToken;

    iput v6, v0, Lcom/samsung/javaomp/compiler/MyToken;->realKind:I

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0, v4}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    const-string v0, ">"

    iput-object v0, p1, Lcom/samsung/javaomp/compiler/Token;->image:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x1d -> :sswitch_2
        0x1f -> :sswitch_3
        0x20 -> :sswitch_4
        0x8a -> :sswitch_5
        0x8b -> :sswitch_6
        0xb7 -> :sswitch_7
        0xb8 -> :sswitch_8
    .end sparse-switch
.end method

.method public getNextToken()Lcom/samsung/javaomp/compiler/Token;
    .locals 12

    const/4 v11, -0x1

    const/16 v10, 0x46

    const/4 v6, 0x1

    const v5, 0x7fffffff

    const/4 v7, 0x0

    const/4 v0, 0x0

    move v1, v7

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->BeginToken()C

    move-result v2

    iput-char v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iput-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjimageLen:I

    :goto_1
    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_2
    move v2, v1

    :goto_3
    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    if-eq v1, v5, :cond_8

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    sub-int v3, v2, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    :cond_1
    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoToken:[J

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v1, v3

    const-wide/16 v8, 0x1

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v8, v1

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v3, v8

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjFillToken()Lcom/samsung/javaomp/compiler/Token;

    move-result-object v1

    iput-object v0, v1, Lcom/samsung/javaomp/compiler/Token;->specialToken:Lcom/samsung/javaomp/compiler/Token;

    invoke-virtual {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->TokenLexicalActions(Lcom/samsung/javaomp/compiler/Token;)V

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    if-eq v0, v11, :cond_2

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    :cond_2
    move-object v0, v1

    :goto_4
    return-object v0

    :catch_0
    move-exception v1

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjFillToken()Lcom/samsung/javaomp/compiler/Token;

    move-result-object v1

    iput-object v0, v1, Lcom/samsung/javaomp/compiler/Token;->specialToken:Lcom/samsung/javaomp/compiler/Token;

    move-object v0, v1

    goto :goto_4

    :pswitch_0
    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v1

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v3, 0xba

    if-le v2, v3, :cond_0

    const/16 v2, 0xba

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    move v2, v1

    goto :goto_3

    :pswitch_1
    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v1

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    const/16 v3, 0x3b

    if-le v2, v3, :cond_0

    const/16 v2, 0x3b

    iput v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    move v2, v1

    goto :goto_3

    :pswitch_2
    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v1

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    if-le v2, v10, :cond_0

    iput v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    move v2, v1

    goto/16 :goto_3

    :pswitch_3
    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v1

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedPos:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    if-le v2, v10, :cond_0

    iput v10, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    goto/16 :goto_2

    :cond_3
    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoSkip:[J

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v1, v3

    const-wide/16 v8, 0x1

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v8, v1

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v3, v8

    if-eqz v1, :cond_6

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjtoSpecial:[J

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v1, v3

    const-wide/16 v8, 0x1

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v1, v1, 0x3f

    shl-long/2addr v8, v1

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v3, v8

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjFillToken()Lcom/samsung/javaomp/compiler/Token;

    move-result-object v1

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_5
    invoke-virtual {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SkipLexicalActions(Lcom/samsung/javaomp/compiler/Token;)V

    :goto_6
    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    if-eq v1, v11, :cond_e

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    move v1, v2

    goto/16 :goto_0

    :cond_4
    iput-object v0, v1, Lcom/samsung/javaomp/compiler/Token;->specialToken:Lcom/samsung/javaomp/compiler/Token;

    iput-object v1, v0, Lcom/samsung/javaomp/compiler/Token;->next:Lcom/samsung/javaomp/compiler/Token;

    move-object v0, v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->SkipLexicalActions(Lcom/samsung/javaomp/compiler/Token;)V

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->MoreLexicalActions()V

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v2

    if-eq v1, v11, :cond_7

    sget-object v1, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v2

    iput v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    :cond_7
    iput v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    :try_start_1
    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v7

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move v2, v7

    :cond_8
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->getEndLine()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->getEndColumn()I

    move-result v4

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->readChar()C

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v7

    move-object v5, v0

    :goto_7
    if-nez v1, :cond_9

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0, v6}, Lcom/samsung/javaomp/compiler/JavaCharStream;->backup(I)V

    if-gt v2, v6, :cond_d

    const-string v0, ""

    :goto_8
    move-object v5, v0

    :cond_9
    new-instance v0, Lcom/samsung/javaomp/compiler/TokenMgrError;

    iget v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curLexState:I

    iget-char v6, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    invoke-direct/range {v0 .. v7}, Lcom/samsung/javaomp/compiler/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    :catch_2
    move-exception v0

    if-gt v2, v6, :cond_b

    const-string v0, ""

    :goto_9
    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v5, 0xa

    if-eq v1, v5, :cond_a

    iget-char v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->curChar:C

    const/16 v5, 0xd

    if-ne v1, v5, :cond_c

    :cond_a
    add-int/lit8 v3, v3, 0x1

    move v1, v6

    move-object v5, v0

    move v4, v7

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_c
    add-int/lit8 v4, v4, 0x1

    move v1, v6

    move-object v5, v0

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_e
    move v1, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected jjFillToken()Lcom/samsung/javaomp/compiler/Token;
    .locals 6

    sget-object v0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v0}, Lcom/samsung/javaomp/compiler/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v1}, Lcom/samsung/javaomp/compiler/JavaCharStream;->getBeginLine()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v2}, Lcom/samsung/javaomp/compiler/JavaCharStream;->getBeginColumn()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v3}, Lcom/samsung/javaomp/compiler/JavaCharStream;->getEndLine()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->input_stream:Lcom/samsung/javaomp/compiler/JavaCharStream;

    invoke-virtual {v4}, Lcom/samsung/javaomp/compiler/JavaCharStream;->getEndColumn()I

    move-result v4

    iget v5, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->jjmatchedKind:I

    invoke-static {v5, v0}, Lcom/samsung/javaomp/compiler/MyToken;->newToken(ILjava/lang/String;)Lcom/samsung/javaomp/compiler/Token;

    move-result-object v0

    iput v1, v0, Lcom/samsung/javaomp/compiler/Token;->beginLine:I

    iput v3, v0, Lcom/samsung/javaomp/compiler/Token;->endLine:I

    iput v2, v0, Lcom/samsung/javaomp/compiler/Token;->beginColumn:I

    iput v4, v0, Lcom/samsung/javaomp/compiler/Token;->endColumn:I

    return-object v0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/JavaParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
