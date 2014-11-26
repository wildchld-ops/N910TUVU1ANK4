.class Lcom/android/settings/GridSettings$3;
.super Ljava/lang/Object;
.source "GridSettings.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GridSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GridSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GridSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GridSettings$3;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1    # I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/GridSettings$3;->this$0:Lcom/android/settings/GridSettings;

    # setter for: Lcom/android/settings/GridSettings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0, v1}, Lcom/android/settings/GridSettings;->access$502(Lcom/android/settings/GridSettings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;

    iget-object v0, p0, Lcom/android/settings/GridSettings$3;->this$0:Lcom/android/settings/GridSettings;

    # setter for: Lcom/android/settings/GridSettings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0, v1}, Lcom/android/settings/GridSettings;->access$602(Lcom/android/settings/GridSettings;Landroid/preference/PreferenceActivity$Header;)Landroid/preference/PreferenceActivity$Header;

    iget-object v0, p0, Lcom/android/settings/GridSettings$3;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1    # I
    .param p2    # F
    .param p3    # I

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/settings/GridSettings$3;->this$0:Lcom/android/settings/GridSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    return-void
.end method
