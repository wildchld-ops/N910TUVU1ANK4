.class Lcom/android/settings/SViewStyleClock$2;
.super Ljava/lang/Object;
.source "SViewStyleClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SViewStyleClock;->configureActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewStyleClock;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewStyleClock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SViewStyleClock$2;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SViewStyleClock$2;->this$0:Lcom/android/settings/SViewStyleClock;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/SViewStyleClock;->mIsChangedInside:Z
    invoke-static {v0, v1}, Lcom/android/settings/SViewStyleClock;->access$002(Lcom/android/settings/SViewStyleClock;Z)Z

    iget-object v0, p0, Lcom/android/settings/SViewStyleClock$2;->this$0:Lcom/android/settings/SViewStyleClock;

    # getter for: Lcom/android/settings/SViewStyleClock;->mItemIndex:I
    invoke-static {v0}, Lcom/android/settings/SViewStyleClock;->access$200(Lcom/android/settings/SViewStyleClock;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SViewStyleClock$2;->this$0:Lcom/android/settings/SViewStyleClock;

    # invokes: Lcom/android/settings/SViewStyleClock;->showGuidePopup()Z
    invoke-static {v0}, Lcom/android/settings/SViewStyleClock;->access$300(Lcom/android/settings/SViewStyleClock;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SViewStyleClock$2;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-virtual {v0}, Lcom/android/settings/SViewStyleClock;->saveDB()V

    iget-object v0, p0, Lcom/android/settings/SViewStyleClock$2;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SViewStyleClock$2;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-virtual {v0}, Lcom/android/settings/SViewStyleClock;->saveDB()V

    iget-object v0, p0, Lcom/android/settings/SViewStyleClock$2;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
