.class final enum Landroid/media/WFDUibcManager$UIBC_Mode;
.super Ljava/lang/Enum;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UIBC_Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/media/WFDUibcManager$UIBC_Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/media/WFDUibcManager$UIBC_Mode;

.field public static final enum Camera:Landroid/media/WFDUibcManager$UIBC_Mode;

.field public static final enum forceValue:Landroid/media/WFDUibcManager$UIBC_Mode;

.field public static final enum normal:Landroid/media/WFDUibcManager$UIBC_Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/media/WFDUibcManager$UIBC_Mode;

    const-string v1, "normal"

    invoke-direct {v0, v1, v2}, Landroid/media/WFDUibcManager$UIBC_Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/WFDUibcManager$UIBC_Mode;->normal:Landroid/media/WFDUibcManager$UIBC_Mode;

    new-instance v0, Landroid/media/WFDUibcManager$UIBC_Mode;

    const-string v1, "forceValue"

    invoke-direct {v0, v1, v3}, Landroid/media/WFDUibcManager$UIBC_Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/WFDUibcManager$UIBC_Mode;->forceValue:Landroid/media/WFDUibcManager$UIBC_Mode;

    new-instance v0, Landroid/media/WFDUibcManager$UIBC_Mode;

    const-string v1, "Camera"

    invoke-direct {v0, v1, v4}, Landroid/media/WFDUibcManager$UIBC_Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/WFDUibcManager$UIBC_Mode;->Camera:Landroid/media/WFDUibcManager$UIBC_Mode;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/WFDUibcManager$UIBC_Mode;

    sget-object v1, Landroid/media/WFDUibcManager$UIBC_Mode;->normal:Landroid/media/WFDUibcManager$UIBC_Mode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/WFDUibcManager$UIBC_Mode;->forceValue:Landroid/media/WFDUibcManager$UIBC_Mode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/media/WFDUibcManager$UIBC_Mode;->Camera:Landroid/media/WFDUibcManager$UIBC_Mode;

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/WFDUibcManager$UIBC_Mode;->$VALUES:[Landroid/media/WFDUibcManager$UIBC_Mode;

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

.method public static valueOf(Ljava/lang/String;)Landroid/media/WFDUibcManager$UIBC_Mode;
    .locals 1

    const-class v0, Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/media/WFDUibcManager$UIBC_Mode;

    return-object v0
.end method

.method public static values()[Landroid/media/WFDUibcManager$UIBC_Mode;
    .locals 1

    sget-object v0, Landroid/media/WFDUibcManager$UIBC_Mode;->$VALUES:[Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/WFDUibcManager$UIBC_Mode;

    return-object v0
.end method
