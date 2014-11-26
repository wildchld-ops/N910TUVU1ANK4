.class public Lcom/samsung/app/share/via/external/NativeAccess;
.super Ljava/lang/Object;
.source "NativeAccess.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sharevia"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "sharevia_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "Qdio"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "sharevia"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "sharevia_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :goto_0
    const-string v0, "Qdio"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "mediaConverter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "mediaConverter_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public native getInputParamerterAnalysis(Ljava/lang/String;III)I
.end method

.method public native getInputParamerterAnalysis(Ljava/lang/String;IIII)I
.end method

.method public native getOutputFileSize(Lcom/samsung/app/share/via/external/ShareviaObj;)I
.end method

.method public native startProcessing(Lcom/samsung/app/share/via/external/ShareviaObj;)I
.end method

.method public native stopProcessing()I
.end method
