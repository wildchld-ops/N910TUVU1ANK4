.class Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;
.super Ljava/lang/Object;
.source "SmsViewFrame.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SmsViewFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field private final mDeleteLocked:Z

.field private final mDeleteUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/ui/SmsViewFrame;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SmsViewFrame;JZ)V
    .locals 1
    .param p2    # J
    .param p4    # Z

    iput-object p1, p0, Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;->mDeleteLocked:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/SmsViewFrame;Landroid/net/Uri;Z)V
    .locals 0
    .param p2    # Landroid/net/Uri;
    .param p3    # Z

    iput-object p1, p0, Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;->mDeleteLocked:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v5, 0x0

    sget-object v0, Lcom/android/mms/ui/SmsViewFrame;->mBackgroundQueryHandler:Lcom/android/mms/ui/SmsViewFrame$BackgroundQueryHandler;

    const/16 v1, 0x25e4

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;->mDeleteUri:Landroid/net/Uri;

    iget-boolean v4, p0, Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;->mDeleteLocked:Z

    if-eqz v4, :cond_1

    move-object v4, v5

    :goto_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "ril.sms.gcf-mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "On"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/SmsViewFrame"

    const-string v1, "GCF Mode On -  DB Count Reset"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewFrame$DeleteMessageListener;->this$0:Lcom/android/mms/ui/SmsViewFrame;

    # getter for: Lcom/android/mms/ui/SmsViewFrame;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/SmsViewFrame;->access$300(Lcom/android/mms/ui/SmsViewFrame;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    const-string v4, "locked=0"

    goto :goto_0
.end method
