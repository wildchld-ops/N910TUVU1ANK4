.class Lcom/android/settings/customizablekey/CustomizableKeySettings$1;
.super Ljava/lang/Object;
.source "CustomizableKeySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/customizablekey/CustomizableKeySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/customizablekey/CustomizableKeySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/customizablekey/CustomizableKeySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/customizablekey/CustomizableKeySettings$1;->this$0:Lcom/android/settings/customizablekey/CustomizableKeySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/customizablekey/CustomizableKeySettings$1;->this$0:Lcom/android/settings/customizablekey/CustomizableKeySettings;

    # invokes: Lcom/android/settings/customizablekey/CustomizableKeySettings;->updateUI()V
    invoke-static {v0}, Lcom/android/settings/customizablekey/CustomizableKeySettings;->access$000(Lcom/android/settings/customizablekey/CustomizableKeySettings;)V

    return-void
.end method
