.class public Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;
.super Ljava/lang/Object;
.source "CallSettingsTabFragmentListener.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Fragment;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/ActionBar$TabListener;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBundle:Landroid/os/Bundle;

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
    .param p2    # Ljava/lang/String;
    .param p4    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mClass:Ljava/lang/Class;

    iput-object p4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mBundle:Landroid/os/Bundle;

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
    .locals 5
    .param p1    # Landroid/app/ActionBar$Tab;
    .param p2    # Landroid/app/FragmentTransaction;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mBundle:Landroid/os/Bundle;

    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    const v2, 0x1020002

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .param p1    # Landroid/app/ActionBar$Tab;
    .param p2    # Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    return-void
.end method
