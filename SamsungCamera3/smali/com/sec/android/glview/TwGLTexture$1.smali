.class Lcom/sec/android/glview/TwGLTexture$1;
.super Ljava/lang/Object;
.source "TwGLTexture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/glview/TwGLTexture;->onLoad()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLTexture;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLTexture;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const v8, 0x47012f00

    const v7, 0x46180400

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v4, 0xde1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    # setter for: Lcom/sec/android/glview/TwGLTexture;->mAsyncLodingInProgress:Z
    invoke-static {v1, v5}, Lcom/sec/android/glview/TwGLTexture;->access$002(Lcom/sec/android/glview/TwGLTexture;Z)Z

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->initSize()V

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->setVertices()V

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->initBuffers()V

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    new-array v2, v5, [I

    iput-object v2, v1, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    invoke-static {v5, v1, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "TwGLTexture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] : glGenTexture - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v1, v1, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    aget v1, v1, v6

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "TwGLTexture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] : glBindTexture - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v1, 0x2801

    invoke-static {v4, v1, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    invoke-static {v4, v1, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    invoke-static {v4, v1, v8}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    invoke-static {v4, v1, v8}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getGLBaseProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLProgram;->getProgramID()I

    move-result v2

    iput v2, v1, Lcom/sec/android/glview/TwGLTexture;->mProgramID:I

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getGLBaseProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v2

    const-string v3, "a_position"

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLTexture;->mObjPosition:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getGLBaseProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v2

    const-string v3, "a_texcoord"

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLTexture;->mObjTextureCoord:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getGLBaseProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v2

    const-string v3, "u_MVPMatrix"

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLTexture;->mObjMVPMatrix:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v2, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getGLBaseProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v2

    const-string v3, "u_alpha"

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/glview/TwGLTexture;->mObjAlpha:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLTexture;->loadGLTexture()V

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iput-boolean v5, v1, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    # setter for: Lcom/sec/android/glview/TwGLTexture;->mAsyncLodingInProgress:Z
    invoke-static {v1, v6}, Lcom/sec/android/glview/TwGLTexture;->access$002(Lcom/sec/android/glview/TwGLTexture;Z)Z

    goto/16 :goto_0
.end method
