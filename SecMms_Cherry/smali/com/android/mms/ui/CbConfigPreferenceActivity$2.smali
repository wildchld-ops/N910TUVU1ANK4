.class Lcom/android/mms/ui/CbConfigPreferenceActivity$2;
.super Ljava/lang/Object;
.source "CbConfigPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CbConfigPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$2;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1    # Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$2;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v1, v1, Lcom/android/mms/ui/CbConfigPreferenceActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$2;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mActivePhone:I
    invoke-static {v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$100(Lcom/android/mms/ui/CbConfigPreferenceActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCBMessagesOption(Landroid/content/Context;I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$2;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    # invokes: Lcom/android/mms/ui/CbConfigPreferenceActivity;->setElementEnable(Z)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivity;Z)V

    const/4 v1, 0x1

    return v1
.end method
