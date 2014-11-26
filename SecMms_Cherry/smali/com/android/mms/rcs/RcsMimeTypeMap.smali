.class public Lcom/android/mms/rcs/RcsMimeTypeMap;
.super Ljava/lang/Object;
.source "RcsMimeTypeMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/RcsMimeTypeMap$RcsMimeType;
    }
.end annotation


# static fields
.field public static final APPLICATION:Ljava/lang/String; = "application"

.field public static final AUDIO:Ljava/lang/String; = "audio"

.field public static final IMAGE:Ljava/lang/String; = "image"

.field public static final MIME_TYPE_ITEM_APK:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final MIME_TYPE_ITEM_CALENDAR:Ljava/lang/String; = "text/x-vCalendar"

.field public static final MIME_TYPE_ITEM_DRM:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field public static final MIME_TYPE_ITEM_GIF:Ljava/lang/String; = "image/gif"

.field public static final MIME_TYPE_ITEM_MEMO:Ljava/lang/String; = "text/x-vnote"

.field public static final MIME_TYPE_ITEM_SNB:Ljava/lang/String; = "application/snb"

.field public static final MIME_TYPE_ITEM_SPD:Ljava/lang/String; = "application/spd"

.field public static final MIME_TYPE_ITEM_SSF:Ljava/lang/String; = "application/ssf"

.field public static final MIME_TYPE_ITEM_TASK:Ljava/lang/String; = "text/x-vtodo"

.field public static final MIME_TYPE_ITEM_VCARD:Ljava/lang/String; = "text/x-vcard"

.field public static final MIME_TYPE_ITEM_WBMP:Ljava/lang/String; = "image/vnd.wap.wbmp"

.field public static final TEXT:Ljava/lang/String; = "text"

.field public static final VIDEO:Ljava/lang/String; = "video"

.field private static sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/rcs/RcsMimeTypeMap$RcsMimeType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/rcs/RcsMimeTypeMap;->sMimeTypeMap:Ljava/util/HashMap;

    const-string v0, "MP3"

    const-string v1, "audio/mpeg"

    const-string v2, "Mpeg"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "M4A"

    const-string v1, "audio/mp4"

    const-string v2, "M4A"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WAV"

    const-string v1, "audio/x-wav"

    const-string v2, "WAVE"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AMR"

    const-string v1, "audio/amr"

    const-string v2, "AMR"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AWB"

    const-string v1, "audio/amr-wb"

    const-string v2, "AWB"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WMA"

    const-string v1, "audio/x-ms-wma"

    const-string v2, "WMA"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OGG"

    const-string v1, "audio/ogg"

    const-string v2, "OGG"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OGA"

    const-string v1, "audio/ogg"

    const-string v2, "OGA"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AAC"

    const-string v1, "audio/aac"

    const-string v2, "AAC"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "3GA"

    const-string v1, "audio/3gpp"

    const-string v2, "3GA"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FLAC"

    const-string v1, "audio/flac"

    const-string v2, "FLAC"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MPGA"

    const-string v1, "audio/mpeg"

    const-string v2, "MPGA"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MP4_A"

    const-string v1, "audio/mp4"

    const-string v2, "MP4 Audio"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "3GP_A"

    const-string v1, "audio/3gpp"

    const-string v2, "3GP Audio"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "3G2_A"

    const-string v1, "audio/3gpp2"

    const-string v2, "3G2 Audio"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ASF_A"

    const-string v1, "audio/x-ms-asf"

    const-string v2, "ASF Audio"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "3GPP_A"

    const-string v1, "audio/3gpp"

    const-string v2, "3GPP"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MID"

    const-string v1, "audio/midi"

    const-string v2, "MIDI"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "XMF"

    const-string v1, "audio/midi"

    const-string v2, "XMF"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MXMF"

    const-string v1, "audio/midi"

    const-string v2, "MXMF"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RTTTL"

    const-string v1, "audio/midi"

    const-string v2, "RTTTL"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SMF"

    const-string v1, "audio/sp-midi"

    const-string v2, "SMF"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "IMY"

    const-string v1, "audio/imelody"

    const-string v2, "IMY"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MIDI"

    const-string v1, "audio/midi"

    const-string v2, "MIDI"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RTX"

    const-string v1, "audio/midi"

    const-string v2, "MIDI"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OTA"

    const-string v1, "audio/midi"

    const-string v2, "MIDI"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DCF"

    const-string v1, "application/vnd.oma.drm.content"

    const-string v2, "DRM"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MPEG"

    const-string v1, "video/mpeg"

    const-string v2, "MPEG"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MPG"

    const-string v1, "video/mpeg"

    const-string v2, "MPEG"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MP4"

    const-string v1, "video/mp4"

    const-string v2, "MP4"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "M4V"

    const-string v1, "video/mp4"

    const-string v2, "M4V"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "3GP"

    const-string v1, "video/3gpp"

    const-string v2, "3GP"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "3GPP"

    const-string v1, "video/3gpp"

    const-string v2, "3GPP"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "3G2"

    const-string v1, "video/3gpp2"

    const-string v2, "3G2"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "3GPP2"

    const-string v1, "video/3gpp2"

    const-string v2, "3GPP2"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WMV"

    const-string v1, "video/x-ms-wmv"

    const-string v2, "WMV"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ASF"

    const-string v1, "video/x-ms-asf"

    const-string v2, "ASF"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AVI"

    const-string v1, "video/avi"

    const-string v2, "AVI"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DIVX"

    const-string v1, "video/divx"

    const-string v2, "DIVX"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FLV"

    const-string v1, "video/flv"

    const-string v2, "FLV"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MKV"

    const-string v1, "video/mkv"

    const-string v2, "MKV"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "JPG"

    const-string v1, "image/jpeg"

    const-string v2, "JPEG"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "JPEG"

    const-string v1, "image/jpeg"

    const-string v2, "JPEG"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MY5"

    const-string v1, "image/vnd.tmo.my5"

    const-string v2, "JPEG"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GIF"

    const-string v1, "image/gif"

    const-string v2, "GIF"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PNG"

    const-string v1, "image/png"

    const-string v2, "PNG"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BMP"

    const-string v1, "image/x-ms-bmp"

    const-string v2, "Microsoft BMP"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WBMP"

    const-string v1, "image/vnd.wap.wbmp"

    const-string v2, "Wireless BMP"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "QSS"

    const-string v1, "slide/qss"

    const-string v2, "QSS"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "M3U"

    const-string v1, "audio/x-mpegurl"

    const-string v2, "M3U"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PLS"

    const-string v1, "audio/x-scpls"

    const-string v2, "PLS"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WPL"

    const-string v1, "application/vnd.ms-wpl"

    const-string v2, "WPL"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RTF"

    const-string v1, "text/rtf"

    const-string v2, "Text Document"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GUL"

    const-string v1, "application/jungumword"

    const-string v2, "Jungum Word"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SWF"

    const-string v1, "application/x-shockwave-flash"

    const-string v2, "SWF"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SVG"

    const-string v1, "image/svg+xml"

    const-string v2, "SVG"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "XML"

    const-string v1, "application/xhtml+xml"

    const-string v2, "XML"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SDP"

    const-string v1, "application/sdp"

    const-string v2, "SDP"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PDF"

    const-string v1, "application/pdf"

    const-string v2, "Acrobat PDF"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DOC"

    const-string v1, "application/msword"

    const-string v2, "Microsoft Office WORD"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DOCX"

    const-string v1, "application/msword"

    const-string v2, "Microsoft Office WORD"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DOT"

    const-string v1, "application/msword"

    const-string v2, "Microsoft Office WORD"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DOTX"

    const-string v1, "application/msword"

    const-string v2, "Microsoft Office WORD"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "XLS"

    const-string v1, "application/vnd.ms-excel"

    const-string v2, "Microsoft Office Excel"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "XLSX"

    const-string v1, "application/vnd.ms-excel"

    const-string v2, "Microsoft Office Excel"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "XLT"

    const-string v1, "application/vnd.ms-excel"

    const-string v2, "Microsoft Office Excel"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "XLTX"

    const-string v1, "application/vnd.ms-excel"

    const-string v2, "Microsoft Office Excel"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PPT"

    const-string v1, "application/vnd.ms-powerpoint"

    const-string v2, "Microsoft Office PowerPoint"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "POT"

    const-string v1, "application/vnd.ms-powerpoint"

    const-string v2, "Microsoft Office PowerPoint"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "POTX"

    const-string v1, "application/vnd.ms-powerpoint"

    const-string v2, "Microsoft Office PowerPoint"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PPTX"

    const-string v1, "application/vnd.ms-powerpoint"

    const-string v2, "Microsoft Office PowerPoint"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HWP"

    const-string v1, "application/hwp"

    const-string v2, "HWP"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TXT"

    const-string v1, "text/plain"

    const-string v2, "Text Document"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HTML"

    const-string v1, "text/html"

    const-string v2, "HTML"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HTM"

    const-string v1, "text/html"

    const-string v2, "HTML"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "APK"

    const-string v1, "application/vnd.android.package-archive"

    const-string v2, "Android package install file"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VCS"

    const-string v1, "text/x-vCalendar"

    const-string v2, "VCS"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ICS"

    const-string v1, "text/x-vCalendar"

    const-string v2, "ICS"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VCF"

    const-string v1, "text/x-vcard"

    const-string v2, "VCF"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VNT"

    const-string v1, "text/x-vnote"

    const-string v2, "VNT"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VTS"

    const-string v1, "text/x-vtodo"

    const-string v2, "VTS"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RAR"

    const-string v1, "application/rar"

    const-string v2, "RAR"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ZIP"

    const-string v1, "application/zip"

    const-string v2, "ZIP"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "7Z"

    const-string v1, "application/zip"

    const-string v2, "7Z"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SNB"

    const-string v1, "application/snb"

    const-string v2, "SNB"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SPD"

    const-string v1, "application/spd"

    const-string v2, "SPD"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SSF"

    const-string v1, "application/ssf"

    const-string v2, "SSF"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "QCAP"

    const-string v1, "application/qcap"

    const-string v2, "QCAP"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BAT"

    const-string v1, "application/bat"

    const-string v2, "BAT"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EXE"

    const-string v1, "application/exe"

    const-string v2, "EXE"

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsMimeTypeMap;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/mms/rcs/RcsMimeTypeMap;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/mms/rcs/RcsMimeTypeMap;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getImMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lcom/android/mms/rcs/RcsMimeTypeMap;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/octet-stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/wave"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/amr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/midi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/3gpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "video/3gpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text/x-vCalendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "video/mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/qcap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/bat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "text/plain"

    goto/16 :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/mms/rcs/RcsMimeTypeMap;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/mms/rcs/RcsMimeTypeMap;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lcom/android/mms/rcs/RcsMimeTypeMap;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/rcs/RcsMimeTypeMap$RcsMimeType;

    iget-object v1, v1, Lcom/android/mms/rcs/RcsMimeTypeMap$RcsMimeType;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getRcsMimeType(Ljava/lang/String;)Lcom/android/mms/rcs/RcsMimeTypeMap$RcsMimeType;
    .locals 2
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/mms/rcs/RcsMimeTypeMap;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lcom/android/mms/rcs/RcsMimeTypeMap;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/rcs/RcsMimeTypeMap$RcsMimeType;

    goto :goto_0
.end method

.method private static insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    new-instance v0, Lcom/android/mms/rcs/RcsMimeTypeMap$RcsMimeType;

    invoke-direct {v0}, Lcom/android/mms/rcs/RcsMimeTypeMap$RcsMimeType;-><init>()V

    iput-object p0, v0, Lcom/android/mms/rcs/RcsMimeTypeMap$RcsMimeType;->extension:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/mms/rcs/RcsMimeTypeMap$RcsMimeType;->description:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/mms/rcs/RcsMimeTypeMap$RcsMimeType;->mimeType:Ljava/lang/String;

    sget-object v1, Lcom/android/mms/rcs/RcsMimeTypeMap;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
