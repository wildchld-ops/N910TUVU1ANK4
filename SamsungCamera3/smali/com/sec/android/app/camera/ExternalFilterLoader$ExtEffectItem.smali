.class public Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;
.super Ljava/lang/Object;
.source "ExternalFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ExternalFilterLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtEffectItem"
.end annotation


# instance fields
.field private mEffect:Ljava/lang/String;

.field private mEffectId:I

.field private mFilter:Ljava/lang/String;

.field private mHeight:I

.field private mId:I

.field private mPackageName:Ljava/lang/String;

.field private mPosx:I

.field private mPosy:I

.field private mTitle:Ljava/lang/String;

.field private mVendor:Ljava/lang/String;

.field private mVersion:I

.field private mWidth:I

.field private mfiltertype:Ljava/lang/String;

.field private mhandler:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/camera/ExternalFilterLoader;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/ExternalFilterLoader;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # I
    .param p8    # Ljava/lang/String;
    .param p9    # I
    .param p10    # I
    .param p11    # I
    .param p12    # I
    .param p13    # Ljava/lang/String;
    .param p14    # Ljava/lang/String;
    .param p15    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->this$0:Lcom/sec/android/app/camera/ExternalFilterLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mId:I

    iput p3, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mEffectId:I

    iput-object p4, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mVendor:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mEffect:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mFilter:Ljava/lang/String;

    iput p7, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mVersion:I

    iput-object p8, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mTitle:Ljava/lang/String;

    iput p9, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mPosx:I

    iput p10, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mPosy:I

    iput p11, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mWidth:I

    iput p12, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mHeight:I

    iput-object p13, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mhandler:Ljava/lang/String;

    iput-object p14, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mPackageName:Ljava/lang/String;

    iput-object p15, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mfiltertype:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEffectId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mEffectId:I

    return v0
.end method

.method public getEffectName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mEffect:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mfiltertype:Ljava/lang/String;

    return-object v0
.end method

.method public getFiterName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mhandler:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosx()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mPosx:I

    return v0
.end method

.method public getPosy()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mPosy:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mVersion:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->mWidth:I

    return v0
.end method
