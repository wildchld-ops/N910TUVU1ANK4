.class public Lcom/android/mms/ui/RetryActivity;
.super Landroid/app/Activity;
.source "RetryActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/RetryActivity"


# instance fields
.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialog:Landroid/app/AlertDialog;

.field private mError:I

.field private final mRetryListener:Landroid/content/DialogInterface$OnClickListener;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/mms/ui/RetryActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RetryActivity$2;-><init>(Lcom/android/mms/ui/RetryActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/mms/ui/RetryActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RetryActivity$3;-><init>(Lcom/android/mms/ui/RetryActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mRetryListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/RetryActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/RetryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/RetryActivity;->moveMessageToFail()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/RetryActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/RetryActivity;->mError:I

    return v0
.end method

.method private initResource()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0350

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c00ef

    iget-object v2, p0, Lcom/android/mms/ui/RetryActivity;->mRetryListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c00f0

    iget-object v2, p0, Lcom/android/mms/ui/RetryActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c0351

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/ui/RetryActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/RetryActivity$1;-><init>(Lcom/android/mms/ui/RetryActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const-string v1, "Mms/RetryActivity"

    const-string v2, "show dialog"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private moveMessageToFail()V
    .locals 4

    const-string v0, "Mms/RetryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveMessageToFail(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/RetryActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mUri:Landroid/net/Uri;

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/mms/ui/RetryActivity;->mError:I

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;ZI)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v2, 0x0

    const-class v3, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Mms/RetryActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "error"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/RetryActivity;->mError:I

    invoke-direct {p0}, Lcom/android/mms/ui/RetryActivity;->initResource()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/mms/ui/RetryActivity;->moveMessageToFail()V

    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mUri:Landroid/net/Uri;

    const-string v0, "error"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/RetryActivity;->mError:I

    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/RetryActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/RetryActivity;->initResource()V

    return-void
.end method
