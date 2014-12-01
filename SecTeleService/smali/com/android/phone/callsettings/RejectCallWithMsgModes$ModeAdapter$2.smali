.class Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$2;
.super Ljava/lang/Object;
.source "RejectCallWithMsgModes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$2;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iput p2, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$2;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->access$300(Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$2;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$2;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    const-class v1, Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v3, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$2;->this$1:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    const-class v1, Lcom/android/phone/callsettings/RejectCallWithMsgIconMode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v3, v2}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0
.end method
