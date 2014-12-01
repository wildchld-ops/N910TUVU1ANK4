.class Landroid/preference/PreferenceActivity$5;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    iget-object v1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    # getter for: Landroid/preference/PreferenceActivity;->mEnableSplitBar:Z
    invoke-static {v1}, Landroid/preference/PreferenceActivity;->access$600(Landroid/preference/PreferenceActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    # getter for: Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z
    invoke-static {v1}, Landroid/preference/PreferenceActivity;->access$700(Landroid/preference/PreferenceActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static {v1}, Landroid/preference/PreferenceActivity;->access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    # getter for: Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Landroid/preference/PreferenceActivity;->access$900(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static {v2}, Landroid/preference/PreferenceActivity;->access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v0, v1, v2

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-object v1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static {v1}, Landroid/preference/PreferenceActivity;->access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static {v1}, Landroid/preference/PreferenceActivity;->access$800(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setX(F)V

    goto :goto_0
.end method
