.class Lcom/android/settings/SettingsTabActivity$SettingsTabListener;
.super Ljava/lang/Object;
.source "SettingsTabActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsTabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsTabActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/SettingsTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SettingsTabActivity;Lcom/android/settings/SettingsTabActivity$1;)V
    .locals 0
    .param p1    # Lcom/android/settings/SettingsTabActivity;
    .param p2    # Lcom/android/settings/SettingsTabActivity$1;

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsTabActivity;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1    # Landroid/app/ActionBar$Tab;
    .param p2    # Landroid/app/FragmentTransaction;

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1    # Landroid/app/ActionBar$Tab;
    .param p2    # Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsTabActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    iget-object v0, p0, Lcom/android/settings/SettingsTabActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsTabActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1    # Landroid/app/ActionBar$Tab;
    .param p2    # Landroid/app/FragmentTransaction;

    return-void
.end method
