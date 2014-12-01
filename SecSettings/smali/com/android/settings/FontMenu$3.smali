.class Lcom/android/settings/FontMenu$3;
.super Ljava/lang/Object;
.source "FontMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FontMenu;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FontMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/FontMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FontMenu$3;->this$0:Lcom/android/settings/FontMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/FontMenu$3;->this$0:Lcom/android/settings/FontMenu;

    # getter for: Lcom/android/settings/FontMenu;->mClearfont:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/FontMenu;->access$100(Lcom/android/settings/FontMenu;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
