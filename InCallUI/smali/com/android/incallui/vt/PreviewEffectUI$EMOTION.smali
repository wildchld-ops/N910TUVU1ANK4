.class final enum Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;
.super Ljava/lang/Enum;
.source "PreviewEffectUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/vt/PreviewEffectUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EMOTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

.field public static final enum ANGRY:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

.field public static final enum BLING:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

.field public static final enum LOVE:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

.field public static final enum SAD:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

.field public static final enum SCREAM:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

.field public static final enum SMILE:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    const-string v1, "ANGRY"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->ANGRY:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    new-instance v0, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    const-string v1, "BLING"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->BLING:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    new-instance v0, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    const-string v1, "LOVE"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->LOVE:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    new-instance v0, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    const-string v1, "SAD"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->SAD:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    new-instance v0, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    const-string v1, "SCREAM"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->SCREAM:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    new-instance v0, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    const-string v1, "SMILE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->SMILE:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->ANGRY:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->BLING:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->LOVE:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->SAD:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->SCREAM:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->SMILE:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->$VALUES:[Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;
    .locals 1

    const-class v0, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;
    .locals 1

    sget-object v0, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->$VALUES:[Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->value:I

    return v0
.end method
