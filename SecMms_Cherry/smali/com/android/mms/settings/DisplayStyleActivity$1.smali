.class Lcom/android/mms/settings/DisplayStyleActivity$1;
.super Ljava/lang/Object;
.source "DisplayStyleActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/DisplayStyleActivity;->setWindowResizingEventHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/DisplayStyleActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/DisplayStyleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/DisplayStyleActivity$1;->this$0:Lcom/android/mms/settings/DisplayStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    const-string v6, "Mms/DisplayStyleActivity"

    const-string v7, "onGlobalLayout()"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/mms/settings/DisplayStyleActivity$1;->this$0:Lcom/android/mms/settings/DisplayStyleActivity;

    const v7, 0x7f0b01d7

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v6, p0, Lcom/android/mms/settings/DisplayStyleActivity$1;->this$0:Lcom/android/mms/settings/DisplayStyleActivity;

    const v7, 0x7f0b01d9

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v6, p0, Lcom/android/mms/settings/DisplayStyleActivity$1;->this$0:Lcom/android/mms/settings/DisplayStyleActivity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a003a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, p0, Lcom/android/mms/settings/DisplayStyleActivity$1;->this$0:Lcom/android/mms/settings/DisplayStyleActivity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a003b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-lt v1, v4, :cond_1

    if-lt v0, v3, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
