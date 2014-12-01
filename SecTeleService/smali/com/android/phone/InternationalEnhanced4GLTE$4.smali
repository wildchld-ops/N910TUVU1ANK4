.class Lcom/android/phone/InternationalEnhanced4GLTE$4;
.super Ljava/lang/Object;
.source "InternationalEnhanced4GLTE.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InternationalEnhanced4GLTE;->onInternationalDataClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InternationalEnhanced4GLTE;


# direct methods
.method constructor <init>(Lcom/android/phone/InternationalEnhanced4GLTE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InternationalEnhanced4GLTE$4;->this$0:Lcom/android/phone/InternationalEnhanced4GLTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE$4;->this$0:Lcom/android/phone/InternationalEnhanced4GLTE;

    # getter for: Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/InternationalEnhanced4GLTE;->access$600(Lcom/android/phone/InternationalEnhanced4GLTE;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE$4;->this$0:Lcom/android/phone/InternationalEnhanced4GLTE;

    # getter for: Lcom/android/phone/InternationalEnhanced4GLTE;->mOkClicked:Z
    invoke-static {v1}, Lcom/android/phone/InternationalEnhanced4GLTE;->access$500(Lcom/android/phone/InternationalEnhanced4GLTE;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
