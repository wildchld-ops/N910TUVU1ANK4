.class Lcom/android/phone/callsettings/CallBarring$2;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallBarring;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallBarring;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->callbarring_password:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->access$000(Lcom/android/phone/callsettings/CallBarring;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    const v3, 0x7f090393

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/CallBarring;->access$100(Lcom/android/phone/callsettings/CallBarring;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # setter for: Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z
    invoke-static {v1, v4}, Lcom/android/phone/callsettings/CallBarring;->access$202(Lcom/android/phone/callsettings/CallBarring;Z)Z

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->access$400(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I
    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->access$300(Lcom/android/phone/callsettings/CallBarring;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # invokes: Lcom/android/phone/callsettings/CallBarring;->setCallBarring(I)V
    invoke-static {v1, v4}, Lcom/android/phone/callsettings/CallBarring;->access$500(Lcom/android/phone/callsettings/CallBarring;I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->access$400(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$2;->this$0:Lcom/android/phone/callsettings/CallBarring;

    # getter for: Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/CallBarring;->access$400(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
