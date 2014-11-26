.class public Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;
.super Landroid/os/Handler;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact$ContentObserverHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyHandler"
.end annotation


# static fields
.field private static PENDING_TIMEOUT:I


# instance fields
.field private mHasEvent:Z

.field private mIsPending:Z

.field private mObserver:Lcom/android/mms/data/Contact$ContentObserverHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x7d0

    sput v0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->PENDING_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/android/mms/data/Contact$ContentObserverHandler;)V
    .locals 0
    .param p1    # Landroid/os/Looper;
    .param p2    # Lcom/android/mms/data/Contact$ContentObserverHandler;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->mObserver:Lcom/android/mms/data/Contact$ContentObserverHandler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->mIsPending:Z

    iget-boolean v0, p0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->mHasEvent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->onEvent()V

    :cond_0
    return-void
.end method

.method public onEvent()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->mIsPending:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->mHasEvent:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->mIsPending:Z

    iput-boolean v2, p0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->mHasEvent:Z

    iget-object v0, p0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->mObserver:Lcom/android/mms/data/Contact$ContentObserverHandler;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact$ContentObserverHandler;->performOnChanged()V

    sget v0, Lcom/android/mms/data/Contact$ContentObserverHandler$MyHandler;->PENDING_TIMEOUT:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
