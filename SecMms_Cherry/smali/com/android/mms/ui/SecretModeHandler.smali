.class public Lcom/android/mms/ui/SecretModeHandler;
.super Landroid/content/BroadcastReceiver;
.source "SecretModeHandler.java"


# static fields
.field public static final SECRET_MODE_CHANGED:I = 0x64

.field public static final SECRET_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

.field public static final SECRET_MODE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_ON"

.field public static final SECRET_OPEN_THREAD:Ljava/lang/String; = "com.samsung.android.intent.action.SECRET_OPEN_MESSAGE_THREAD"

.field private static final TAG:Ljava/lang/String; = "Mms/SecretModeHandler"

.field public static mIsSecretMode:Z


# instance fields
.field private COLUMNS:[Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "send_to_voicemail"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_priavte"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/ui/SecretModeHandler;->COLUMNS:[Ljava/lang/String;

    new-instance v0, Lcom/android/mms/ui/SecretModeHandler$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SecretModeHandler$1;-><init>(Lcom/android/mms/ui/SecretModeHandler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SecretModeHandler;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public isPrivateContact(Ljava/lang/String;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    const-string v0, "content://com.android.contacts/private"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object v6, p1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v10

    :goto_0
    return v0

    :cond_0
    invoke-static {v8, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/SecretModeHandler;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_1

    move v0, v10

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-ne v7, v11, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v0, v11

    goto :goto_0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto :goto_0

    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public isSecret(J)Z
    .locals 1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.samsung.android.intent.action.PRIVATE_MODE_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SecretModeHandler;->scheduleSecretModeChanged(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SecretModeHandler;->scheduleSecretModeChanged(Z)V

    goto :goto_0
.end method

.method public registerSecretModeReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p0, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public requestIdentifyFingerPrint(JLandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    move-object v1, p3

    const-string v2, "com.samsung.android.intent.action.SECRET_OPEN_MESSAGE_THREAD"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v4}, Lcom/samsung/android/secretmode/SecretModeManager;->showVisualCue(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v4}, Lcom/samsung/android/secretmode/SecretModeManager;->showVisualCue(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    goto :goto_0
.end method

.method public scheduleSecretModeChanged(Z)V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/SecretModeHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public unregisterSecretModeReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateSecretMode(ZZ)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Mms/SecretModeHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSecretMode secretMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p1, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    sput-boolean v4, Lcom/android/mms/data/Contact;->isInvalid:Z

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    sget-boolean v1, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageFragment()Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/SecretModeHandler;->isSecret(J)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/ConversationComposer;->showEmptyScreen(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->removeComposer()V

    :cond_2
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SecretModeHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    goto :goto_0
.end method
