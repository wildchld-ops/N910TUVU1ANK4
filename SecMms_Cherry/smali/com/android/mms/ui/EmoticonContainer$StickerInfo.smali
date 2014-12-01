.class Lcom/android/mms/ui/EmoticonContainer$StickerInfo;
.super Ljava/lang/Object;
.source "EmoticonContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EmoticonContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StickerInfo"
.end annotation


# instance fields
.field private install:J

.field private isDownloading:Z

.field private itemPosition:I

.field private needUpdate:Z

.field private stickerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;JZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->itemPosition:I

    iput-object p2, p0, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->stickerId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->install:J

    iput-boolean p5, p0, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->needUpdate:Z

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/EmoticonContainer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stickerId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", install : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", needUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->install:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->install:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->needUpdate:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->needUpdate:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->isDownloading:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->isDownloading:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->itemPosition:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/EmoticonContainer$StickerInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$StickerInfo;->stickerId:Ljava/lang/String;

    return-object v0
.end method
