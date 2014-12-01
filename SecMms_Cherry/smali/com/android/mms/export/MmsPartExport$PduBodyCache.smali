.class Lcom/android/mms/export/MmsPartExport$PduBodyCache;
.super Ljava/lang/Object;
.source "MmsPartExport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/export/MmsPartExport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PduBodyCache"
.end annotation


# static fields
.field private static mLastPduBody:Lcom/google/android/mms/pdu/PduBody;

.field private static mLastUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    sget-object v2, Lcom/android/mms/export/MmsPartExport$PduBodyCache;->mLastUri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/android/mms/export/MmsPartExport$PduBodyCache;->mLastPduBody:Lcom/google/android/mms/pdu/PduBody;

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    sput-object v2, Lcom/android/mms/export/MmsPartExport$PduBodyCache;->mLastPduBody:Lcom/google/android/mms/pdu/PduBody;

    sput-object p1, Lcom/android/mms/export/MmsPartExport$PduBodyCache;->mLastUri:Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lcom/android/mms/export/MmsPartExport$PduBodyCache;->mLastPduBody:Lcom/google/android/mms/pdu/PduBody;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Mms/MmsPartExport"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
