.class public Lcom/samsung/app/share/via/external/ShareviaObj;
.super Ljava/lang/Object;
.source "ShareviaObj.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/app/share/via/external/ShareviaObj$TranscodeMode;,
        Lcom/samsung/app/share/via/external/ShareviaObj$codecType;,
        Lcom/samsung/app/share/via/external/ShareviaObj$videoResType;
    }
.end annotation


# instance fields
.field OutFileResolution:I

.field assetmngr:Landroid/content/res/AssetManager;

.field audioCodecType:I

.field audioLength:I

.field audioOffset:I

.field endTime:I

.field iconFileName:Ljava/lang/String;

.field inputFileName:Ljava/lang/String;

.field maxOutFileDuration:I

.field maxOutFileSize:I

.field outputFileName:Ljava/lang/String;

.field outputHeight:I

.field outputWidth:I

.field startTime:I

.field transcodeMode:I

.field version:I

.field videoCodecType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->version:I

    iput v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->version:I

    return-void
.end method


# virtual methods
.method public getShareViaAudioLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->audioLength:I

    return v0
.end method

.method public getShareViaAudioOffset()I
    .locals 1

    iget v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->audioOffset:I

    return v0
.end method

.method public getShareViaHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->outputHeight:I

    return v0
.end method

.method public getShareViaTranscodeMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->transcodeMode:I

    return v0
.end method

.method public getShareViaVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->version:I

    return v0
.end method

.method public getShareViaWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->outputWidth:I

    return v0
.end method

.method public setShareViaAssetmngr(Landroid/content/res/AssetManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->assetmngr:Landroid/content/res/AssetManager;

    return-void
.end method

.method public setShareViaAudioCodec(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->audioCodecType:I

    return-void
.end method

.method public setShareViaAudioLength(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->audioLength:I

    return-void
.end method

.method public setShareViaAudioOffset(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->audioOffset:I

    return-void
.end method

.method public setShareViaEndTime(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->endTime:I

    return-void
.end method

.method public setShareViaHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->outputHeight:I

    return-void
.end method

.method public setShareViaIconFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->iconFileName:Ljava/lang/String;

    return-void
.end method

.method public setShareViaInputFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->inputFileName:Ljava/lang/String;

    return-void
.end method

.method public setShareViaOutputFileResolution(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->OutFileResolution:I

    return-void
.end method

.method public setShareViaOutputFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->outputFileName:Ljava/lang/String;

    return-void
.end method

.method public setShareViaStartTime(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->startTime:I

    return-void
.end method

.method public setShareViaTranscodeMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->transcodeMode:I

    return-void
.end method

.method public setShareViaVideoCodec(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->videoCodecType:I

    return-void
.end method

.method public setShareViaWidth(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->outputWidth:I

    return-void
.end method

.method public setShareViamaxDuration(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->maxOutFileDuration:I

    return-void
.end method

.method public setShareViamaxSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/app/share/via/external/ShareviaObj;->maxOutFileSize:I

    return-void
.end method
