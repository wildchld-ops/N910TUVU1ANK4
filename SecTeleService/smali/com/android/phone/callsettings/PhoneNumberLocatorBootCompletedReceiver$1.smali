.class Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver$1;
.super Ljava/lang/Object;
.source "PhoneNumberLocatorBootCompletedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;->startCopyThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver$1;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocatorBootCompletedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    const-string v1, "/system/etc/HomeLocationVersion.bin"

    const-string v2, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "/system/etc/HomeLocationDB.bin"

    const-string v2, "/data/data/com.android.phone/HomeLocationDB.bin"

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->CopyFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
