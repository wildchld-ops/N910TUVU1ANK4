.class public Lcom/android/mms/model/CarrierContentRestriction;
.super Ljava/lang/Object;
.source "CarrierContentRestriction.java"

# interfaces
.implements Lcom/android/mms/model/ContentRestriction;


# static fields
.field private static final DECRIPTION_EXCEPTION:Ljava/lang/String; = "Null content type to be check"

.field private static final TAG:Ljava/lang/String; = "Mms/CarrierContentRestriction"

.field private static final sSupportedAudioTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedImageTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSupportedVideoTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/mms/ContentType;->getImageTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/mms/ContentType;->getAudioTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/mms/ContentType;->getVideoTypes()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedVideoTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCarrierNOTSupportedType(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "audio/amr-wb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/midi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/mid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/x-mid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/x-midi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static getMmsCreationMode(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_key_mms_creation_mode"

    const-string v3, "free"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->convertCreationMode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public checkAudioContentType(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Null content type to be check"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/android/mms/model/CarrierContentRestriction;->checkCarrierNOTSupportedType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Carrier Spec Unsupported audio content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedAudioTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported audio content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public checkAudioCreationMode(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Lcom/android/mms/ContentRestrictionException;

    const-string v2, "Null content type to be check"

    invoke-direct {v1, v2}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x1

    const-string v1, "audio/amr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1}, Lcom/android/mms/model/CarrierContentRestriction;->checkCarrierNOTSupportedType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/mms/ContentRestrictionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Carrier Spec Unsupported audio content type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    :cond_3
    new-instance v1, Lcom/android/mms/ContentRestrictionException;

    const-string v2, "Unsupported audio content type"

    invoke-direct {v1, v2}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method

.method public checkImageContentType(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/android/mms/ContentRestrictionException;

    const-string v1, "Null content type to be check"

    invoke-direct {v0, v1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedImageTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported image content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public checkImageCreationMode(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Lcom/android/mms/ContentRestrictionException;

    const-string v2, "Null content type to be check"

    invoke-direct {v1, v2}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x1

    const-string v1, "image/jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "image/jpg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "image/gif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "image/vnd.wap.wbmp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_4

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    :cond_2
    new-instance v1, Lcom/android/mms/ContentRestrictionException;

    const-string v2, "PNG image"

    invoke-direct {v1, v2}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    return-void
.end method

.method public checkImageRotation(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/mms/RotationException;

    const-string v1, "Rotation exceeds restriction."

    invoke-direct {v0, v1}, Lcom/android/mms/RotationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public checkMessageSize(IILandroid/content/ContentResolver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;,
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const-string v1, "Mms/CarrierContentRestriction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "messageSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , increaseSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/mms/ContentRestrictionException;

    const-string v2, "Negative message size or increase size"

    invoke-direct {v1, v2}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    add-int v0, p1, p2

    if-ltz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    if-le v0, v1, :cond_3

    :cond_2
    new-instance v1, Lcom/android/mms/ExceedMessageSizeException;

    const-string v2, "Exceed message size limitation"

    invoke-direct {v1, v2}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method public checkResolution(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    if-nez p3, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidthRestrictedMode()I

    move-result v0

    if-gt p1, v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeightRestrictedMode()I

    move-result v0

    if-le p2, v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeightRestrictedMode()I

    move-result v0

    if-gt p1, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidthRestrictedMode()I

    move-result v0

    if-le p2, v0, :cond_5

    :cond_1
    new-instance v0, Lcom/android/mms/ResolutionException;

    const-string v1, "content resolution exceeds restriction."

    invoke-direct {v0, v1}, Lcom/android/mms/ResolutionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v0

    if-gt p1, v0, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v0

    if-le p2, v0, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v0

    if-gt p1, v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v0

    if-le p2, v0, :cond_5

    :cond_4
    new-instance v0, Lcom/android/mms/ResolutionException;

    const-string v1, "content resolution exceeds restriction."

    invoke-direct {v0, v1}, Lcom/android/mms/ResolutionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method public checkVideoContentType(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    const-string v1, "Unsupported video content type : Null"

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/mms/model/CarrierContentRestriction;->sSupportedVideoTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/mms/UnsupportContentTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported video content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public checkVideoCreationMode(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Lcom/android/mms/ContentRestrictionException;

    const-string v2, "Null content type to be check"

    invoke-direct {v1, v2}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x1

    const-string v1, "video/3gpp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    if-nez p2, :cond_3

    :cond_1
    new-instance v1, Lcom/android/mms/ContentRestrictionException;

    const-string v2, "3GPP/MP4 Video > 300KB not allowed"

    invoke-direct {v1, v2}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    return-void
.end method
