.class Lcom/android/settings/wifi/WifiConnectionPreference$1;
.super Ljava/lang/Object;
.source "WifiConnectionPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiConnectionPreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConnectionPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConnectionPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectionPreference$1;->this$0:Lcom/android/settings/wifi/WifiConnectionPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const v2, 0x1010008

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    # getter for: Lcom/android/settings/wifi/WifiConnectionPreference;->mCurrentChecked:Landroid/widget/CompoundButton;
    invoke-static {}, Lcom/android/settings/wifi/WifiConnectionPreference;->access$000()Landroid/widget/CompoundButton;

    move-result-object v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
