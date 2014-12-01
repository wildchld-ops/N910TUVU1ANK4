.class Lcom/android/phone/Enhanced4GLTE$5;
.super Ljava/lang/Object;
.source "Enhanced4GLTE.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Enhanced4GLTE;->onStandardDataClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Enhanced4GLTE;


# direct methods
.method constructor <init>(Lcom/android/phone/Enhanced4GLTE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/Enhanced4GLTE$5;->this$0:Lcom/android/phone/Enhanced4GLTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE$5;->this$0:Lcom/android/phone/Enhanced4GLTE;

    # invokes: Lcom/android/phone/Enhanced4GLTE;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/Enhanced4GLTE;->access$700(Lcom/android/phone/Enhanced4GLTE;Z)V

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE$5;->this$0:Lcom/android/phone/Enhanced4GLTE;

    # getter for: Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/Enhanced4GLTE;->access$300(Lcom/android/phone/Enhanced4GLTE;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
