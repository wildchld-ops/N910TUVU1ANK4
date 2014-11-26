.class public Lcom/android/settings/wifi/WifiPoorConnection;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiPoorConnection.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDurationDialogHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWatchdogPoorConnectionAlertDialog:Landroid/app/AlertDialog;

.field private mWatchdogPoorConnectionAlertDialogRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiPoorConnection;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mDurationDialogHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/wifi/WifiPoorConnection$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiPoorConnection$1;-><init>(Lcom/android/settings/wifi/WifiPoorConnection;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/WifiPoorConnection;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiPoorConnection;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WifiPoorConnection;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiPoorConnection;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WifiPoorConnection;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiPoorConnection;Ljava/lang/Runnable;)V
    .locals 0
    .param p0    # Lcom/android/settings/wifi/WifiPoorConnection;
    .param p1    # Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiPoorConnection;->removeDialogTimer(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiPoorConnection;)Landroid/app/AlertDialog;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/WifiPoorConnection;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private removeDialogTimer(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mDurationDialogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mDurationDialogHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private showPoorConnectionDiag()V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiPoorConnection;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v7, 0x7f0402a7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v7, 0x7f0b00a6

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f09050e

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v7, 0x1040014

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0b06d1

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPoorConnection;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_poor_connection_warning"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_2

    :goto_1
    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    const v5, 0x7f090859

    new-instance v6, Lcom/android/settings/wifi/WifiPoorConnection$2;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/wifi/WifiPoorConnection$2;-><init>(Lcom/android/settings/wifi/WifiPoorConnection;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/settings/wifi/WifiPoorConnection$3;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/wifi/WifiPoorConnection$3;-><init>(Lcom/android/settings/wifi/WifiPoorConnection;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/settings/wifi/WifiPoorConnection$4;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiPoorConnection$4;-><init>(Lcom/android/settings/wifi/WifiPoorConnection;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v5, Lcom/android/settings/wifi/WifiPoorConnection$5;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiPoorConnection$5;-><init>(Lcom/android/settings/wifi/WifiPoorConnection;)V

    iput-object v5, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialogRunnable:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mDurationDialogHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialogRunnable:Ljava/lang/Runnable;

    const-wide/16 v7, 0x7530

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v5, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const-string v0, "WifiPoorConnection"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/android/settings/wifi/WifiPoorConnection;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPoorConnection;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPoorConnection;->setupAlert()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiPoorConnection;->showPoorConnectionDiag()V

    return-void
.end method
