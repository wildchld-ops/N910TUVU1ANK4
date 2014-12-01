.class public Lcom/android/mms/util/MessageMimeTypeMap;
.super Ljava/lang/Object;
.source "MessageMimeTypeMap.java"


# static fields
.field private static sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

.field private static sMimeTypeMap_typicalAudio:Lcom/android/mms/util/MessageMimeTypeMap;


# instance fields
.field private mExtensionToMimeTypeMap:Ljava/util/HashMap;
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

.field private mMimeTypeToExtensionMap:Ljava/util/HashMap;
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


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v4, ""

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    const/16 v5, 0x3f

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v5, 0x2f

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    const-string v5, "[a-zA-Z_0-9\\.\\-\\(\\)]+"

    invoke-static {v5, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x2e

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5

    :cond_1
    move-object v1, p0

    goto :goto_0

    :cond_2
    const-string v5, ""

    goto :goto_1
.end method

.method public static declared-synchronized getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;
    .locals 4

    const-class v1, Lcom/android/mms/util/MessageMimeTypeMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/mms/util/MessageMimeTypeMap;

    invoke-direct {v0}, Lcom/android/mms/util/MessageMimeTypeMap;-><init>()V

    sput-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/andrew-inset"

    const-string v3, "ez"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/dsptype"

    const-string v3, "tsp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/futuresplash"

    const-string v3, "spl"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/hta"

    const-string v3, "hta"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/mac-binhex40"

    const-string v3, "hqx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/mac-compactpro"

    const-string v3, "cpt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/mathematica"

    const-string v3, "nb"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/msaccess"

    const-string v3, "mdb"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/oda"

    const-string v3, "oda"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/ogg"

    const-string v3, "ogg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/pdf"

    const-string v3, "pdf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/pgp-keys"

    const-string v3, "key"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/pgp-signature"

    const-string v3, "pgp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/pics-rules"

    const-string v3, "prf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/rar"

    const-string v3, "rar"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/rdf+xml"

    const-string v3, "rdf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/rss+xml"

    const-string v3, "rss"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/zip"

    const-string v3, "zip"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.android.package-archive"

    const-string v3, "apk"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.cinderella"

    const-string v3, "cdy"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.ms-pki.stl"

    const-string v3, "stl"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.database"

    const-string v3, "odb"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.formula"

    const-string v3, "odf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.graphics"

    const-string v3, "odg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.graphics-template"

    const-string v3, "otg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.image"

    const-string v3, "odi"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.spreadsheet"

    const-string v3, "ods"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.spreadsheet-template"

    const-string v3, "ots"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.text"

    const-string v3, "odt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.text-master"

    const-string v3, "odm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.text-template"

    const-string v3, "ott"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.oasis.opendocument.text-web"

    const-string v3, "oth"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/msword"

    const-string v3, "doc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/msword"

    const-string v3, "dot"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v3, "docx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    const-string v3, "dotx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.ms-excel"

    const-string v3, "xls"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.ms-excel"

    const-string v3, "xlt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v3, "xlsx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    const-string v3, "xltx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.ms-powerpoint"

    const-string v3, "ppt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.ms-powerpoint"

    const-string v3, "pot"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.ms-powerpoint"

    const-string v3, "pps"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    const-string v3, "pptx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.template"

    const-string v3, "potx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    const-string v3, "ppsx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.rim.cod"

    const-string v3, "cod"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.smaf"

    const-string v3, "mmf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.stardivision.calc"

    const-string v3, "sdc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.stardivision.draw"

    const-string v3, "sda"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.stardivision.impress"

    const-string v3, "sdd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.stardivision.impress"

    const-string v3, "sdp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.stardivision.math"

    const-string v3, "smf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.stardivision.writer"

    const-string v3, "sdw"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.stardivision.writer"

    const-string v3, "vor"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.stardivision.writer-global"

    const-string v3, "sgl"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.calc"

    const-string v3, "sxc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.calc.template"

    const-string v3, "stc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.draw"

    const-string v3, "sxd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.draw.template"

    const-string v3, "std"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.impress"

    const-string v3, "sxi"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.impress.template"

    const-string v3, "sti"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.math"

    const-string v3, "sxm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.writer"

    const-string v3, "sxw"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.writer.global"

    const-string v3, "sxg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.sun.xml.writer.template"

    const-string v3, "stw"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/vnd.visio"

    const-string v3, "vsd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-abiword"

    const-string v3, "abw"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-apple-diskimage"

    const-string v3, "dmg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-bcpio"

    const-string v3, "bcpio"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-bittorrent"

    const-string v3, "torrent"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-cdf"

    const-string v3, "cdf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-cdlink"

    const-string v3, "vcd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-chess-pgn"

    const-string v3, "pgn"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-cpio"

    const-string v3, "cpio"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-debian-package"

    const-string v3, "deb"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-debian-package"

    const-string v3, "udeb"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-director"

    const-string v3, "dcr"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-director"

    const-string v3, "dir"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-director"

    const-string v3, "dxr"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-dms"

    const-string v3, "dms"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-doom"

    const-string v3, "wad"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-dvi"

    const-string v3, "dvi"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-flac"

    const-string v3, "flac"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-font"

    const-string v3, "pfa"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-font"

    const-string v3, "pfb"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-font"

    const-string v3, "gsf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-font"

    const-string v3, "pcf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-font"

    const-string v3, "pcf.Z"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-freemind"

    const-string v3, "mm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-futuresplash"

    const-string v3, "spl"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-gnumeric"

    const-string v3, "gnumeric"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-go-sgf"

    const-string v3, "sgf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-graphing-calculator"

    const-string v3, "gcf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-gtar"

    const-string v3, "gtar"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-gtar"

    const-string v3, "tgz"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-gtar"

    const-string v3, "taz"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-hdf"

    const-string v3, "hdf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-ica"

    const-string v3, "ica"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-internet-signup"

    const-string v3, "ins"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-internet-signup"

    const-string v3, "isp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-iphone"

    const-string v3, "iii"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-iso9660-image"

    const-string v3, "iso"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-jmol"

    const-string v3, "jmz"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-kchart"

    const-string v3, "chrt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-killustrator"

    const-string v3, "kil"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-koan"

    const-string v3, "skp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-koan"

    const-string v3, "skd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-koan"

    const-string v3, "skt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-koan"

    const-string v3, "skm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-kpresenter"

    const-string v3, "kpr"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-kpresenter"

    const-string v3, "kpt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-kspread"

    const-string v3, "ksp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-kword"

    const-string v3, "kwd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-kword"

    const-string v3, "kwt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-latex"

    const-string v3, "latex"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-lha"

    const-string v3, "lha"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-lzh"

    const-string v3, "lzh"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-lzx"

    const-string v3, "lzx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-maker"

    const-string v3, "frm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-maker"

    const-string v3, "maker"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-maker"

    const-string v3, "frame"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-maker"

    const-string v3, "fb"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-maker"

    const-string v3, "book"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-maker"

    const-string v3, "fbdoc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-mif"

    const-string v3, "mif"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-ms-wmd"

    const-string v3, "wmd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-ms-wmz"

    const-string v3, "wmz"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-msi"

    const-string v3, "msi"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-ns-proxy-autoconfig"

    const-string v3, "pac"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-nwc"

    const-string v3, "nwc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-object"

    const-string v3, "o"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-oz-application"

    const-string v3, "oza"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-pkcs12"

    const-string v3, "p12"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-pkcs7-certreqresp"

    const-string v3, "p7r"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-pkcs7-crl"

    const-string v3, "crl"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-quicktimeplayer"

    const-string v3, "qtl"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-shar"

    const-string v3, "shar"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-stuffit"

    const-string v3, "sit"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-sv4cpio"

    const-string v3, "sv4cpio"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-sv4crc"

    const-string v3, "sv4crc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-tar"

    const-string v3, "tar"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-texinfo"

    const-string v3, "texinfo"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-texinfo"

    const-string v3, "texi"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-troff"

    const-string v3, "t"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-troff"

    const-string v3, "roff"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-troff-man"

    const-string v3, "man"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-ustar"

    const-string v3, "ustar"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-wais-source"

    const-string v3, "src"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-wingz"

    const-string v3, "wz"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-webarchive"

    const-string v3, "webarchive"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-x509-ca-cert"

    const-string v3, "crt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-x509-user-cert"

    const-string v3, "crt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-xcf"

    const-string v3, "xcf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/x-xfig"

    const-string v3, "fig"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "application/xhtml+xml"

    const-string v3, "xhtml"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/basic"

    const-string v3, "snd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/midi"

    const-string v3, "mid"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/midi"

    const-string v3, "midi"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/midi"

    const-string v3, "kar"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/mpeg"

    const-string v3, "mpga"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/mpeg"

    const-string v3, "mpega"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/mpeg"

    const-string v3, "mp2"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/mpeg"

    const-string v3, "mp3"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/mpeg"

    const-string v3, "m4a"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/mpegurl"

    const-string v3, "m3u"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/prs.sid"

    const-string v3, "sid"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-aiff"

    const-string v3, "aif"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-aiff"

    const-string v3, "aiff"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-aiff"

    const-string v3, "aifc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-gsm"

    const-string v3, "gsm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-mpegurl"

    const-string v3, "m3u"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-ms-wma"

    const-string v3, "wma"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-ms-wax"

    const-string v3, "wax"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-pn-realaudio"

    const-string v3, "ra"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-pn-realaudio"

    const-string v3, "rm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-pn-realaudio"

    const-string v3, "ram"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-realaudio"

    const-string v3, "ra"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-scpls"

    const-string v3, "pls"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-sd2"

    const-string v3, "sd2"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/x-wav"

    const-string v3, "wav"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/amr"

    const-string v3, "amr"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/aac"

    const-string v3, "aac"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/imelody"

    const-string v3, "imy"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/flac"

    const-string v3, "flac"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/mp4"

    const-string v3, "m4a"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/mobile-xmf"

    const-string v3, "mxmf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/3gpp"

    const-string v3, "3ga"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/amr-wb"

    const-string v3, "awb"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/vnd.qcelp"

    const-string v3, "qcp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/qcelp"

    const-string v3, "qcp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/evrc"

    const-string v3, "qcp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/bmp"

    const-string v3, "bmp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/gif"

    const-string v3, "gif"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/ico"

    const-string v3, "cur"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/ico"

    const-string v3, "ico"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/ief"

    const-string v3, "ief"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/jpeg"

    const-string v3, "jpeg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/jpg"

    const-string v3, "jpg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/jpeg"

    const-string v3, "map"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/jpeg"

    const-string v3, "jpe"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/jpeg"

    const-string v3, "jpg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/pcx"

    const-string v3, "pcx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/png"

    const-string v3, "png"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/svg+xml"

    const-string v3, "svg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/svg+xml"

    const-string v3, "svgz"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/tiff"

    const-string v3, "tiff"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/tiff"

    const-string v3, "tif"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/vnd.djvu"

    const-string v3, "djvu"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/vnd.djvu"

    const-string v3, "djv"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/vnd.wap.wbmp"

    const-string v3, "wbmp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-cmu-raster"

    const-string v3, "ras"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-coreldraw"

    const-string v3, "cdr"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-coreldrawpattern"

    const-string v3, "pat"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-coreldrawtemplate"

    const-string v3, "cdt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-corelphotopaint"

    const-string v3, "cpt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-icon"

    const-string v3, "ico"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-jg"

    const-string v3, "art"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-jng"

    const-string v3, "jng"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-ms-bmp"

    const-string v3, "bmp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-photoshop"

    const-string v3, "psd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-portable-anymap"

    const-string v3, "pnm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-portable-bitmap"

    const-string v3, "pbm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-portable-graymap"

    const-string v3, "pgm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-portable-pixmap"

    const-string v3, "ppm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-rgb"

    const-string v3, "rgb"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-xbitmap"

    const-string v3, "xbm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-xpixmap"

    const-string v3, "xpm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "image/x-xwindowdump"

    const-string v3, "xwd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "model/iges"

    const-string v3, "igs"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "model/iges"

    const-string v3, "iges"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "model/mesh"

    const-string v3, "msh"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "model/mesh"

    const-string v3, "mesh"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "model/mesh"

    const-string v3, "silo"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/calendar"

    const-string v3, "ics"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/calendar"

    const-string v3, "icz"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/comma-separated-values"

    const-string v3, "csv"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/css"

    const-string v3, "css"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/h323"

    const-string v3, "323"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/iuls"

    const-string v3, "uls"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/mathml"

    const-string v3, "mml"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/plain"

    const-string v3, "txt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/plain"

    const-string v3, "asc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/plain"

    const-string v3, "text"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/plain"

    const-string v3, "diff"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/plain"

    const-string v3, "po"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/richtext"

    const-string v3, "rtx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/rtf"

    const-string v3, "rtf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/texmacs"

    const-string v3, "ts"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/text"

    const-string v3, "phps"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/tab-separated-values"

    const-string v3, "tsv"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/xml"

    const-string v3, "xml"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-bibtex"

    const-string v3, "bib"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-boo"

    const-string v3, "boo"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-c++hdr"

    const-string v3, "h++"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-c++hdr"

    const-string v3, "hpp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-c++hdr"

    const-string v3, "hxx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-c++hdr"

    const-string v3, "hh"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-c++src"

    const-string v3, "c++"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-c++src"

    const-string v3, "cpp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-c++src"

    const-string v3, "cxx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-chdr"

    const-string v3, "h"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-component"

    const-string v3, "htc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-csh"

    const-string v3, "csh"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-csrc"

    const-string v3, "c"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-dsrc"

    const-string v3, "d"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-haskell"

    const-string v3, "hs"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-java"

    const-string v3, "java"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-literate-haskell"

    const-string v3, "lhs"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-moc"

    const-string v3, "moc"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-pascal"

    const-string v3, "p"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-pascal"

    const-string v3, "pas"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-pcs-gcd"

    const-string v3, "gcd"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-setext"

    const-string v3, "etx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-tcl"

    const-string v3, "tcl"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-tex"

    const-string v3, "tex"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-tex"

    const-string v3, "ltx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-tex"

    const-string v3, "sty"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-tex"

    const-string v3, "cls"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-vcalendar"

    const-string v3, "vcs"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-vcard"

    const-string v3, "vcf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/vcard"

    const-string v3, "vcf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-vnote"

    const-string v3, "vnt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/html"

    const-string v3, "html"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "text/x-vtodo"

    const-string v3, "vts"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/3gpp"

    const-string v3, "3gp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/3gpp"

    const-string v3, "3g2"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/dl"

    const-string v3, "dl"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/dv"

    const-string v3, "dif"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/dv"

    const-string v3, "dv"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/fli"

    const-string v3, "fli"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/mpeg"

    const-string v3, "mpeg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/mpeg"

    const-string v3, "mpg"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/mpeg"

    const-string v3, "mpe"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/mp4"

    const-string v3, "mp4"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/mpeg"

    const-string v3, "VOB"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/quicktime"

    const-string v3, "qt"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/quicktime"

    const-string v3, "mov"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/vnd.mpegurl"

    const-string v3, "mxu"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-la-asf"

    const-string v3, "lsf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-la-asf"

    const-string v3, "lsx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-mng"

    const-string v3, "mng"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-ms-asf"

    const-string v3, "asf"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-ms-asf"

    const-string v3, "asx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-ms-wm"

    const-string v3, "wm"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-ms-wmv"

    const-string v3, "wmv"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-ms-wmx"

    const-string v3, "wmx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-ms-wvx"

    const-string v3, "wvx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-msvideo"

    const-string v3, "avi"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/x-sgi-movie"

    const-string v3, "movie"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "x-conference/x-cooltalk"

    const-string v3, "ice"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "x-epoc/x-sisx-app"

    const-string v3, "sisx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/h263"

    const-string v3, "3gp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/mpeg4"

    const-string v3, "mp4"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "video/divx"

    const-string v3, "divx"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSingletonTypicalAudioType()Lcom/android/mms/util/MessageMimeTypeMap;
    .locals 4

    const-class v1, Lcom/android/mms/util/MessageMimeTypeMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap_typicalAudio:Lcom/android/mms/util/MessageMimeTypeMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/util/MessageMimeTypeMap;

    invoke-direct {v0}, Lcom/android/mms/util/MessageMimeTypeMap;-><init>()V

    sput-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap_typicalAudio:Lcom/android/mms/util/MessageMimeTypeMap;

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap_typicalAudio:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/mp4"

    const-string v3, "mp4"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap_typicalAudio:Lcom/android/mms/util/MessageMimeTypeMap;

    const-string v2, "audio/3gpp"

    const-string v3, "3gp"

    invoke-direct {v0, v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->loadEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/mms/util/MessageMimeTypeMap;->sMimeTypeMap_typicalAudio:Lcom/android/mms/util/MessageMimeTypeMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtensionListFromMimeType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mExtensionToMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMimeType(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/MessageMimeTypeMap;->mMimeTypeToExtensionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
