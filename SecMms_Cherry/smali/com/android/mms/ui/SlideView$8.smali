.class Lcom/android/mms/ui/SlideView$8;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field attachment:Lcom/android/mms/model/AttachmentModel;

.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/SlideView$8;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/mms/ui/SlideView;->staticAttachment:Lcom/android/mms/model/AttachmentModel;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView$8;->attachment:Lcom/android/mms/model/AttachmentModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$8;->attachment:Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v2}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "text/x-vNote"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "text/x-vCalendar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "text/x-vNote"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "text/x-vtodo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "text/x-vCard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, ""

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableOma13NameEncoding()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$8;->attachment:Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v2}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v2, "text/x-vcard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$8;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/SlideView;->access$3200(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideView$8;->attachment:Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/android/mms/util/PackageInfo;->openVContact(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    const-string v2, "text/x-vcalendar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$8;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/SlideView;->access$3300(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideView$8;->attachment:Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/android/mms/util/PackageInfo;->callCalendarImport(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "text/x-vtodo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/SlideView$8;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/SlideView;->access$3400(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideView$8;->attachment:Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/android/mms/util/PackageInfo;->callTaskImport(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/SlideView$8;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/SlideView;->access$3500(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideView$8;->attachment:Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v3}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/android/mms/util/PackageInfo;->callProperActivity(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
