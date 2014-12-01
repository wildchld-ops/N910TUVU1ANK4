.class Lcom/android/incallui/service/IncomingPopupService$5;
.super Ljava/lang/Object;
.source "IncomingPopupService.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/IncomingPopupService;->startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/IncomingPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/IncomingPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/IncomingPopupService$5;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$5;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContactInfoComplete - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/incallui/service/IncomingPopupService;->access$000(Lcom/android/incallui/service/IncomingPopupService;Ljava/lang/String;Z)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$5;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # setter for: Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {v0, p2}, Lcom/android/incallui/service/IncomingPopupService;->access$2402(Lcom/android/incallui/service/IncomingPopupService;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$5;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->setCallerInfo()V
    invoke-static {v0}, Lcom/android/incallui/service/IncomingPopupService;->access$2500(Lcom/android/incallui/service/IncomingPopupService;)V

    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$5;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->updateCnapName()V
    invoke-static {v0}, Lcom/android/incallui/service/IncomingPopupService;->access$2600(Lcom/android/incallui/service/IncomingPopupService;)V

    :cond_0
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$5;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->updateCdnipNumber()V
    invoke-static {v0}, Lcom/android/incallui/service/IncomingPopupService;->access$2700(Lcom/android/incallui/service/IncomingPopupService;)V

    :cond_1
    return-void
.end method

.method public onImageLoadComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$5;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    const-string v1, "onImageLoadComplete"

    const/4 v2, 0x1

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/incallui/service/IncomingPopupService;->access$000(Lcom/android/incallui/service/IncomingPopupService;Ljava/lang/String;Z)V

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$5;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # getter for: Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {v0}, Lcom/android/incallui/service/IncomingPopupService;->access$2400(Lcom/android/incallui/service/IncomingPopupService;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$5;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # getter for: Lcom/android/incallui/service/IncomingPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {v0}, Lcom/android/incallui/service/IncomingPopupService;->access$2400(Lcom/android/incallui/service/IncomingPopupService;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/IncomingPopupService$5;->this$0:Lcom/android/incallui/service/IncomingPopupService;

    # invokes: Lcom/android/incallui/service/IncomingPopupService;->setCallerImage()V
    invoke-static {v0}, Lcom/android/incallui/service/IncomingPopupService;->access$2800(Lcom/android/incallui/service/IncomingPopupService;)V

    :cond_1
    return-void
.end method
