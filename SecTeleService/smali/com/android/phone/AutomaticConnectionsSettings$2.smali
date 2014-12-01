.class Lcom/android/phone/AutomaticConnectionsSettings$2;
.super Ljava/lang/Object;
.source "AutomaticConnectionsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutomaticConnectionsSettings;->ConnectionsOptimizerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutomaticConnectionsSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/AutomaticConnectionsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/AutomaticConnectionsSettings$2;->this$0:Lcom/android/phone/AutomaticConnectionsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/AutomaticConnectionsSettings$2;->this$0:Lcom/android/phone/AutomaticConnectionsSettings;

    invoke-virtual {v0}, Lcom/android/phone/AutomaticConnectionsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "b_ds_dialog_displayed_settings"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/AutomaticConnectionsSettings$2;->this$0:Lcom/android/phone/AutomaticConnectionsSettings;

    # getter for: Lcom/android/phone/AutomaticConnectionsSettings;->mButtonSprintAutomaticConnection:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/AutomaticConnectionsSettings;->access$000(Lcom/android/phone/AutomaticConnectionsSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/AutomaticConnectionsSettings$2;->this$0:Lcom/android/phone/AutomaticConnectionsSettings;

    # invokes: Lcom/android/phone/AutomaticConnectionsSettings;->automaticConnectionBroadcast(I)V
    invoke-static {v0, v2}, Lcom/android/phone/AutomaticConnectionsSettings;->access$200(Lcom/android/phone/AutomaticConnectionsSettings;I)V

    return-void
.end method
