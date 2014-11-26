.class Lcom/android/settings/wifi/hs20/Hs20PickerDialog$1;
.super Ljava/lang/Object;
.source "Hs20PickerDialog.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/hs20/Hs20PickerDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/hs20/Hs20PickerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$1;->this$0:Lcom/android/settings/wifi/hs20/Hs20PickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$1;->this$0:Lcom/android/settings/wifi/hs20/Hs20PickerDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/hs20/Hs20PickerDialog$1;->this$0:Lcom/android/settings/wifi/hs20/Hs20PickerDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
