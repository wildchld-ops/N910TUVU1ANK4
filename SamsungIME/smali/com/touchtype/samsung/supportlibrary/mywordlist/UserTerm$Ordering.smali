.class public final enum Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ordering"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COUNT_ASC:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

.field public static final enum COUNT_DESC:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

.field public static final enum UNICODE_ASC:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

.field public static final enum UNICODE_DESC:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

.field private static final synthetic a:[Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    const-string v1, "UNICODE_ASC"

    invoke-direct {v0, v1, v2}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;->UNICODE_ASC:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    const-string v1, "UNICODE_DESC"

    invoke-direct {v0, v1, v3}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;->UNICODE_DESC:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    const-string v1, "COUNT_ASC"

    invoke-direct {v0, v1, v4}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;->COUNT_ASC:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    const-string v1, "COUNT_DESC"

    invoke-direct {v0, v1, v5}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;->COUNT_DESC:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    sget-object v1, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;->UNICODE_ASC:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    aput-object v1, v0, v2

    sget-object v1, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;->UNICODE_DESC:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    aput-object v1, v0, v3

    sget-object v1, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;->COUNT_ASC:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    aput-object v1, v0, v4

    sget-object v1, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;->COUNT_DESC:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    aput-object v1, v0, v5

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;->a:[Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;
    .locals 1

    const-class v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    return-object v0
.end method

.method public static values()[Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;
    .locals 1

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;->a:[Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    return-object v0
.end method
