.class public Lcom/samsung/android/cocktailbar/CocktailHost;
.super Ljava/lang/Object;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;,
        Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;,
        Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;
    }
.end annotation


# static fields
.field static final HANDLE_COCKTAIL_CLOSE_CONTEXTUAL:I = 0x5

.field static final HANDLE_COCKTAIL_PARTIALLY_UPDATE:I = 0x2

.field static final HANDLE_COCKTAIL_REMOVE:I = 0x3

.field static final HANDLE_COCKTAIL_SET_MODE:I = 0xf

.field static final HANDLE_COCKTAIL_SHOW:I = 0x4

.field static final HANDLE_COCKTAIL_TICKER_DISABLE:I = 0x10

.field static final HANDLE_COCKTAIL_UPDATE:I = 0x1

.field static final HANDLE_COCKTAIL_UPDATE_EXTRA:I = 0x8

.field static final HANDLE_COCKTAIL_UPDATE_TOOL_LAUNCHER:I = 0x7

.field static final HANDLE_COCKTAIL_VIEW_DATA_CHANGED:I = 0x6

.field static final HANDLE_NOTIFY_COCKTAILBAR_DECOR_CHANGED:I = 0x9

.field static final HANDLE_NOTIFY_COCKTAILBAR_VISIBILITY:I = 0xb

.field static final HANDLE_NOTIFY_KEYGUARD_STATE:I = 0xa

.field static final HANDLE_NOTIFY_SCREEN_TURNED_ON:I = 0x11

.field static final HANDLE_NOTIFY_WAKEUP_STATE:I = 0xd

.field static final HANDLE_SEND_EXTRA_DATA_TO_COCKTAILBAR:I = 0xe

.field static final HANDLE_SET_TRANSPARENT_COCKTAIL:I = 0x12

.field static final HANDLE_SWITCH_DEFAULT_COCKTAIL:I = 0xc

.field static sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

.field static final sServiceLock:Ljava/lang/Object;


# instance fields
.field mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

.field mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailHost;->sServiceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/cocktailbar/CocktailHost;-><init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;Landroid/os/Looper;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;
    .param p3    # Landroid/os/Looper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    invoke-direct {v0, p0}, Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;-><init>(Lcom/samsung/android/cocktailbar/CocktailHost;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$UpdateHandler;-><init>(Lcom/samsung/android/cocktailbar/CocktailHost;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailHost;->bindService()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cocktailbar/CocktailHost;ILcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1    # I
    .param p2    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/widget/RemoteViews;I)V
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1    # I
    .param p2    # Landroid/widget/RemoteViews;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/cocktailbar/CocktailHost;I)V
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost;->switchDefaultCocktail(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/cocktailbar/CocktailHost;ILandroid/os/Bundle;)V
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->sendExtraDataToCocktailBar(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->notifyWakeUpState(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->setMode(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->setDisableTickerView(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/cocktailbar/CocktailHost;ILcom/samsung/android/cocktailbar/ICocktailBarShowCallback;)V
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1    # I
    .param p2    # Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->notifyScreenTurnedOn(ILcom/samsung/android/cocktailbar/ICocktailBarShowCallback;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->setTransparentCocktail(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->removeCocktail(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->showCocktail(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/cocktailbar/CocktailHost;III)V
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->closeContextualCocktail(III)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/cocktailbar/CocktailHost;III)V
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->viewDataChanged(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/cocktailbar/CocktailHost;I)V
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost;->updateToolLauncher(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->notifyCocktailBarDecorChanged(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/cocktailbar/CocktailHost;II)V
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost;->notifyKeyguardState(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/cocktailbar/CocktailHost;III)V
    .locals 0
    .param p0    # Lcom/samsung/android/cocktailbar/CocktailHost;
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost;->notifyCocktailBarVisibility(III)V

    return-void
.end method

.method private bindService()V
    .locals 5

    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailHost;->sServiceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-nez v1, :cond_0

    const-string v1, "CocktailBarService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private closeContextualCocktail(III)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onCloseContextualCocktail(III)V

    return-void
.end method

.method private notifyCocktailBarDecorChanged(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onNotifyCocktailBarDecorChanged(II)V

    return-void
.end method

.method private notifyCocktailBarVisibility(III)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onNotifyCocktailBarVisibility(III)V

    return-void
.end method

.method private notifyKeyguardState(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onNotifyKeyguardState(ZI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyScreenTurnedOn(ILcom/samsung/android/cocktailbar/ICocktailBarShowCallback;)V
    .locals 1
    .param p1    # I
    .param p2    # Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onScreenTurnedOn(Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;I)V

    return-void
.end method

.method private notifyWakeUpState(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onNotifyWakeUpModeState(ZI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private partiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/widget/RemoteViews;
    .param p3    # I

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onPartiallyUpdateCocktail(ILandroid/widget/RemoteViews;I)V

    return-void
.end method

.method private removeCocktail(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onRemoveCocktail(II)V

    return-void
.end method

.method private sendExtraDataToCocktailBar(ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSendExtraDataToCocktailBar(Landroid/os/Bundle;I)V

    return-void
.end method

.method private setDisableTickerView(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSetDisableTickerView(II)V

    return-void
.end method

.method private setMode(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSetMode(II)V

    return-void
.end method

.method private setTransparentCocktail(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSetTransparentCocktail(ZI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showCocktail(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onShowCocktail(II)V

    return-void
.end method

.method private switchDefaultCocktail(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onSwitchDefaultCocktail(I)V

    return-void
.end method

.method private updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
    .locals 1
    .param p1    # I
    .param p2    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p3    # I

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onUpdateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V

    return-void
.end method

.method private updateToolLauncher(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onUpdateToolLauncher(I)V

    return-void
.end method

.method private viewDataChanged(III)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbackListener:Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;->onViewDataChanged(III)V

    return-void
.end method


# virtual methods
.method public startListening()V
    .locals 8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mPackageName:Ljava/lang/String;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mPackageName:Ljava/lang/String;

    :cond_0
    sget-object v5, Lcom/samsung/android/cocktailbar/CocktailHost;->sService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mCallbacks:Lcom/samsung/android/cocktailbar/CocktailHost$Callbacks;

    iget-object v7, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mPackageName:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;Ljava/util/List;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    array-length v0, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget v6, v4, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/cocktailbar/Cocktail;

    iget-object v7, p0, Lcom/samsung/android/cocktailbar/CocktailHost;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-direct {p0, v6, v5, v7}, Lcom/samsung/android/cocktailbar/CocktailHost;->updateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "system server dead?"

    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_1
    return-void
.end method
