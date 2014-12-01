.class Lcom/android/incallui/CallCardPresenter$3;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardPresenter;

.field final synthetic val$identification:Lcom/android/services/telephony/common/CallIdentification;

.field final synthetic val$isPrimary:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardPresenter;Lcom/android/services/telephony/common/CallIdentification;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter$3;->this$0:Lcom/android/incallui/CallCardPresenter;

    iput-object p2, p0, Lcom/android/incallui/CallCardPresenter$3;->val$identification:Lcom/android/services/telephony/common/CallIdentification;

    iput-boolean p3, p0, Lcom/android/incallui/CallCardPresenter$3;->val$isPrimary:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$3;->val$identification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-static {v0, p2}, Lcom/android/incallui/EcidClient;->updateContactInfo(Lcom/android/services/telephony/common/CallIdentification;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$3;->this$0:Lcom/android/incallui/CallCardPresenter;

    iget-boolean v1, p0, Lcom/android/incallui/CallCardPresenter$3;->val$isPrimary:Z

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    # getter for: Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$3;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/incallui/CallerInfoUtils;->sendViewNotification(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_2
    return-void
.end method

.method public onImageLoadComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$3;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$3;->val$identification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-static {v0, p2}, Lcom/android/incallui/EcidClient;->updateContactInfo(Lcom/android/services/telephony/common/CallIdentification;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_2
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$3;->this$0:Lcom/android/incallui/CallCardPresenter;

    # getter for: Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;
    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$200(Lcom/android/incallui/CallCardPresenter;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$3;->this$0:Lcom/android/incallui/CallCardPresenter;

    # getter for: Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;
    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$200(Lcom/android/incallui/CallCardPresenter;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$3;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mCallCardCoveredDialog:Lcom/android/incallui/cover/CoverDialog;

    invoke-virtual {v0}, Lcom/android/incallui/cover/CoverDialog;->getCallCardCovered()Lcom/android/incallui/cover/CoverCall;

    move-result-object v0

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/cover/CoverCall;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$3;->this$0:Lcom/android/incallui/CallCardPresenter;

    # getter for: Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;
    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$300(Lcom/android/incallui/CallCardPresenter;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$3;->this$0:Lcom/android/incallui/CallCardPresenter;

    # getter for: Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;
    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$300(Lcom/android/incallui/CallCardPresenter;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$3;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondaryImage(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method
