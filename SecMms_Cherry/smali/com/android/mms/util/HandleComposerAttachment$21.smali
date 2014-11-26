.class Lcom/android/mms/util/HandleComposerAttachment$21;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->addVideo(Landroid/net/Uri;IZZZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;

.field final synthetic val$append:Z

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$flagCRMode:Z

.field final synthetic val$location:I

.field final synthetic val$obj:Lcom/samsung/app/share/via/external/ShareviaObj;

.field final synthetic val$sendMultiple:Z

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;IZZZLjava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object p2, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$uri:Landroid/net/Uri;

    iput p3, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$location:I

    iput-boolean p4, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$flagCRMode:Z

    iput-boolean p5, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$sendMultiple:Z

    iput-boolean p6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$append:Z

    iput-object p7, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$fileName:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$obj:Lcom/samsung/app/share/via/external/ShareviaObj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    iget-object v1, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$uri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$location:I

    iget-boolean v3, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$flagCRMode:Z

    iget-boolean v4, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$sendMultiple:Z

    iget-boolean v5, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$append:Z

    iget-object v6, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$fileName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/util/HandleComposerAttachment$21;->val$obj:Lcom/samsung/app/share/via/external/ShareviaObj;

    # invokes: Lcom/android/mms/util/HandleComposerAttachment;->showVideoResizingDialog(Landroid/net/Uri;IZZZLjava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;)V
    invoke-static/range {v0 .. v7}, Lcom/android/mms/util/HandleComposerAttachment;->access$500(Lcom/android/mms/util/HandleComposerAttachment;Landroid/net/Uri;IZZZLjava/lang/String;Lcom/samsung/app/share/via/external/ShareviaObj;)V

    return-void
.end method
