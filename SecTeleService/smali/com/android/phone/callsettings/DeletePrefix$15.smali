.class Lcom/android/phone/callsettings/DeletePrefix$15;
.super Ljava/lang/Object;
.source "DeletePrefix.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/DeletePrefix;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/DeletePrefix;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/DeletePrefix;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/DeletePrefix$15;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$15;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$15;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mSelectedItem:I
    invoke-static {v1}, Lcom/android/phone/callsettings/DeletePrefix;->access$1500(Lcom/android/phone/callsettings/DeletePrefix;)I

    move-result v1

    # setter for: Lcom/android/phone/callsettings/DeletePrefix;->mSelectedItemForEdit:I
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/DeletePrefix;->access$1402(Lcom/android/phone/callsettings/DeletePrefix;I)I

    iget-object v1, p0, Lcom/android/phone/callsettings/DeletePrefix$15;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$15;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->deletePrefixList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/callsettings/DeletePrefix;->access$500(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/DeletePrefix$15;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # getter for: Lcom/android/phone/callsettings/DeletePrefix;->mSelectedItem:I
    invoke-static {v2}, Lcom/android/phone/callsettings/DeletePrefix;->access$1500(Lcom/android/phone/callsettings/DeletePrefix;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/android/phone/callsettings/DeletePrefix;->mTempEditString:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/DeletePrefix;->access$1302(Lcom/android/phone/callsettings/DeletePrefix;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$15;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/callsettings/DeletePrefix;->mUpdated:Z
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/DeletePrefix;->access$1602(Lcom/android/phone/callsettings/DeletePrefix;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$15;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/DeletePrefix;->editDialog()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$15;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/DeletePrefix;->deleteDialog()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
