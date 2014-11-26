.class Lcom/android/phone/PreferredNetworkDetailView$4;
.super Ljava/lang/Object;
.source "PreferredNetworkDetailView.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PreferredNetworkDetailView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PreferredNetworkDetailView;


# direct methods
.method constructor <init>(Lcom/android/phone/PreferredNetworkDetailView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PreferredNetworkDetailView$4;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1    # Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$4;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    # getter for: Lcom/android/phone/PreferredNetworkDetailView;->actionType:I
    invoke-static {v0}, Lcom/android/phone/PreferredNetworkDetailView;->access$000(Lcom/android/phone/PreferredNetworkDetailView;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$4;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    # getter for: Lcom/android/phone/PreferredNetworkDetailView;->actionType:I
    invoke-static {v0}, Lcom/android/phone/PreferredNetworkDetailView;->access$000(Lcom/android/phone/PreferredNetworkDetailView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView$4;->this$0:Lcom/android/phone/PreferredNetworkDetailView;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/phone/PreferredNetworkDetailView;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
