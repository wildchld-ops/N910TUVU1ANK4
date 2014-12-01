.class Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;
.super Landroid/database/ContentObserver;
.source "SViewStyleClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewStyleClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverStyleClockObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewStyleClock;


# direct methods
.method public constructor <init>(Lcom/android/settings/SViewStyleClock;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;->this$0:Lcom/android/settings/SViewStyleClock;

    # getter for: Lcom/android/settings/SViewStyleClock;->mIsChangedInside:Z
    invoke-static {v0}, Lcom/android/settings/SViewStyleClock;->access$000(Lcom/android/settings/SViewStyleClock;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;->this$0:Lcom/android/settings/SViewStyleClock;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/SViewStyleClock;->mIsChangedInside:Z
    invoke-static {v0, v1}, Lcom/android/settings/SViewStyleClock;->access$002(Lcom/android/settings/SViewStyleClock;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-virtual {v0}, Lcom/android/settings/SViewStyleClock;->getItemIndex()V

    iget-object v0, p0, Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-virtual {v0}, Lcom/android/settings/SViewStyleClock;->setPreview()V

    iget-object v0, p0, Lcom/android/settings/SViewStyleClock$CoverStyleClockObserver;->this$0:Lcom/android/settings/SViewStyleClock;

    # invokes: Lcom/android/settings/SViewStyleClock;->setfocusButton()V
    invoke-static {v0}, Lcom/android/settings/SViewStyleClock;->access$100(Lcom/android/settings/SViewStyleClock;)V

    goto :goto_0
.end method
