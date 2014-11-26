.class public Lcom/samsung/javaomp/compiler/ReducerRules;
.super Ljava/lang/Object;


# static fields
.field static final allowedTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static final defaultValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final reducerMethodName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final reducerResultName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->allowedTypes:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerMethodName:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "int"

    aput-object v1, v0, v5

    const-string v1, "long"

    aput-object v1, v0, v6

    const-string/jumbo v1, "short"

    aput-object v1, v0, v7

    const-string v1, "byte"

    aput-object v1, v0, v4

    const-string v1, "double"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "float"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Integer"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Long"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Short"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Byte"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Double"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Float"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "double"

    aput-object v2, v1, v5

    const-string v2, "float"

    aput-object v2, v1, v6

    const-string v2, "Double"

    aput-object v2, v1, v7

    const-string v2, "Float"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "int"

    aput-object v3, v1, v5

    const-string v3, "long"

    aput-object v3, v1, v6

    const-string/jumbo v3, "short"

    aput-object v3, v1, v7

    const-string v3, "byte"

    aput-object v3, v1, v4

    const-string v3, "Integer"

    aput-object v3, v1, v8

    const/4 v3, 0x5

    const-string v4, "Long"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "Short"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "Byte"

    aput-object v4, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "bool"

    aput-object v4, v3, v5

    const-string v4, "Boolean"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/samsung/javaomp/compiler/ReducerRules;->allowedTypes:Ljava/util/HashMap;

    const-string v5, "+"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/samsung/javaomp/compiler/ReducerRules;->allowedTypes:Ljava/util/HashMap;

    const-string v5, "-"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/samsung/javaomp/compiler/ReducerRules;->allowedTypes:Ljava/util/HashMap;

    const-string v5, "*"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/samsung/javaomp/compiler/ReducerRules;->allowedTypes:Ljava/util/HashMap;

    const-string/jumbo v5, "min"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/samsung/javaomp/compiler/ReducerRules;->allowedTypes:Ljava/util/HashMap;

    const-string/jumbo v5, "max"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->allowedTypes:Ljava/util/HashMap;

    const-string v4, "&&"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->allowedTypes:Ljava/util/HashMap;

    const-string/jumbo v4, "||"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->allowedTypes:Ljava/util/HashMap;

    const-string v4, "&"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->allowedTypes:Ljava/util/HashMap;

    const-string/jumbo v4, "|"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->allowedTypes:Ljava/util/HashMap;

    const-string v4, "^"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string v4, "+"

    const-string v5, "0"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string v4, "-"

    const-string v5, "0"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string v4, "*"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string v4, "&&"

    const-string/jumbo v5, "true"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "||"

    const-string v5, "false"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string v4, "^"

    const-string v5, "0"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "|"

    const-string v5, "0"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "minint"

    const-string v5, "Integer.MAX_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "minInteger"

    const-string v5, "Integer.MAX_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "minlong"

    const-string v5, "Long.MAX_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "minLong"

    const-string v5, "Long.MAX_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "minshort"

    const-string v5, "Short.MAX_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "minShort"

    const-string v5, "Short.MAX_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "minbyte"

    const-string v5, "Byte.MAX_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "minByte"

    const-string v5, "Byte.MAX_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "mindouble"

    const-string v5, "Double.MAX_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "minDouble"

    const-string v5, "Double.MAX_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "minfloat"

    const-string v5, "Float.MAX_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "minFloat"

    const-string v5, "Float.MAX_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "maxint"

    const-string v5, "Integer.MIN_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "maxInteger"

    const-string v5, "Integer.MIN_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "maxlong"

    const-string v5, "Long.MIN_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "maxLong"

    const-string v5, "Long.MIN_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "maxshort"

    const-string v5, "Short.MIN_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "maxShort"

    const-string v5, "Short.MIN_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "maxbyte"

    const-string v5, "Byte.MIN_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "maxByte"

    const-string v5, "Byte.MIN_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "maxdouble"

    const-string v5, "Double.MIN_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "maxDouble"

    const-string v5, "Double.MIN_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "maxfloat"

    const-string v5, "Float.MIN_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->defaultValues:Ljava/util/HashMap;

    const-string/jumbo v4, "maxFloat"

    const-string v5, "Float.MIN_VALUE"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerMethodName:Ljava/util/HashMap;

    const-string v4, "+"

    const-string/jumbo v5, "setPlusReduction"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerMethodName:Ljava/util/HashMap;

    const-string v4, "-"

    const-string/jumbo v5, "setMinusReduction"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerMethodName:Ljava/util/HashMap;

    const-string v4, "*"

    const-string/jumbo v5, "setMultiReduction"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerMethodName:Ljava/util/HashMap;

    const-string v4, "&&"

    const-string/jumbo v5, "setAndReduction"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerMethodName:Ljava/util/HashMap;

    const-string/jumbo v4, "||"

    const-string/jumbo v5, "setOrReduction"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerMethodName:Ljava/util/HashMap;

    const-string v4, "^"

    const-string/jumbo v5, "setBitXorReduction"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerMethodName:Ljava/util/HashMap;

    const-string v4, "&"

    const-string/jumbo v5, "setBitAndReduction"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerMethodName:Ljava/util/HashMap;

    const-string/jumbo v4, "|"

    const-string/jumbo v5, "setBitOrReduction"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerMethodName:Ljava/util/HashMap;

    const-string/jumbo v4, "max"

    const-string/jumbo v5, "setMaxReduction"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerMethodName:Ljava/util/HashMap;

    const-string/jumbo v4, "min"

    const-string/jumbo v5, "setMinReduction"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string v4, "+"

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string v4, "-"

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string v4, "*"

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string v4, "&&"

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string/jumbo v4, "||"

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string v4, "&"

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string v4, "^"

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string/jumbo v4, "|"

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string/jumbo v4, "min"

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string/jumbo v4, "max"

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string v5, "+"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v5, "getLongPlusReduction"

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v5, "getLongMinusReduction"

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string v5, "*"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v5, "getLongMultiReduction"

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string/jumbo v5, "min"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v5, "getLongMinReduction"

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string/jumbo v5, "max"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v5, "getLongMaxReduction"

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string v5, "&"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v5, "getBitAndReduction"

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string/jumbo v5, "|"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v5, "getBitOrReduction"

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string v5, "^"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v5, "getBitXorReduction"

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string v4, "+"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "getDoublePlusReduction"

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "getDoubleMinusReduction"

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string v4, "*"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "getDoubleMultiReduction"

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string/jumbo v4, "min"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "getDoubleMinReduction"

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string/jumbo v4, "max"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "getDoubleMaxReduction"

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string v3, "&&"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "getAndReduction"

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/javaomp/compiler/ReducerRules;->reducerResultName:Ljava/util/HashMap;

    const-string/jumbo v3, "||"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "getOrReduction"

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
