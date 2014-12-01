.class Landroid/media/WFDUibcManager$Keyevnt_arrC;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Keyevnt_arrC"
.end annotation


# instance fields
.field private mKyCod:I

.field private mKyDwnTime:J

.field private mKyFlag:I

.field private mRepCnt:I

.field final synthetic this$0:Landroid/media/WFDUibcManager;


# direct methods
.method private constructor <init>(Landroid/media/WFDUibcManager;)V
    .locals 0

    iput-object p1, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->this$0:Landroid/media/WFDUibcManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/WFDUibcManager$Keyevnt_arrC;-><init>(Landroid/media/WFDUibcManager;)V

    return-void
.end method

.method static synthetic access$300(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I
    .locals 1

    iget v0, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I

    return v0
.end method

.method static synthetic access$302(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I
    .locals 0

    iput p1, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyCod:I

    return p1
.end method

.method static synthetic access$400(Landroid/media/WFDUibcManager$Keyevnt_arrC;)J
    .locals 2

    iget-wide v0, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J

    return-wide v0
.end method

.method static synthetic access$402(Landroid/media/WFDUibcManager$Keyevnt_arrC;J)J
    .locals 0

    iput-wide p1, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J

    return-wide p1
.end method

.method static synthetic access$500(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I
    .locals 1

    iget v0, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    return v0
.end method

.method static synthetic access$502(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I
    .locals 0

    iput p1, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    return p1
.end method

.method static synthetic access$508(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I
    .locals 2

    iget v0, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    return v0
.end method

.method static synthetic access$600(Landroid/media/WFDUibcManager$Keyevnt_arrC;)I
    .locals 1

    iget v0, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    return v0
.end method

.method static synthetic access$602(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I
    .locals 0

    iput p1, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    return p1
.end method

.method static synthetic access$676(Landroid/media/WFDUibcManager$Keyevnt_arrC;I)I
    .locals 1

    iget v0, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    return v0
.end method
