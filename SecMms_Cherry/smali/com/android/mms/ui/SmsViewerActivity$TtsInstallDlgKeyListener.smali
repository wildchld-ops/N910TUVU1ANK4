.class Lcom/android/mms/ui/SmsViewerActivity$TtsInstallDlgKeyListener;
.super Ljava/lang/Object;
.source "SmsViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SmsViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsInstallDlgKeyListener"
.end annotation


# instance fields
.field consumeVolUp:Z

.field final synthetic this$0:Lcom/android/mms/ui/SmsViewerActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/SmsViewerActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/SmsViewerActivity$TtsInstallDlgKeyListener;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity$TtsInstallDlgKeyListener;->consumeVolUp:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x18

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iput-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity$TtsInstallDlgKeyListener;->consumeVolUp:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/SmsViewerActivity$TtsInstallDlgKeyListener;->consumeVolUp:Z

    goto :goto_0
.end method
