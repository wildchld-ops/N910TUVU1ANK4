.class public Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;
.super Ljava/lang/Object;
.source "SubViewResourceIDMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;
    }
.end annotation


# instance fields
.field protected mResourceIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 15

    const v10, 0x7f0200a8

    const v14, 0x7f0c00e9

    const v13, 0x7f0c00ea

    const v12, 0x7f0203b3

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02027b

    const v3, 0x7f02027d

    const v4, 0x7f02027c

    const v5, 0x7f0c025a

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x6f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200ea

    const v3, 0x7f0200ec

    const v4, 0x7f0200eb

    const v5, 0x7f0c011b

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020278

    const v3, 0x7f02027a

    const v4, 0x7f020279

    const v5, 0x7f0c001f

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020114

    const v3, 0x7f020116

    const v4, 0x7f020115

    const v5, 0x7f0c00f0

    const v6, 0x7f0c0277

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIIIII)V

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0202f2

    const v3, 0x7f0202f4

    const v4, 0x7f0202f3

    const v5, 0x7f0c0105

    const v6, 0x7f0c028e

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIIIII)V

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02027b

    const v3, 0x7f02027d

    const v4, 0x7f02027c

    const v5, 0x7f0c025a

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xc9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02027b

    const v3, 0x7f02027d

    const v4, 0x7f02027c

    const v5, 0x7f0c025a

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1a2c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020325

    const v3, 0x7f020327

    const v4, 0x7f020326

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1a2d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020328

    const v3, 0x7f02032a

    const v4, 0x7f020329

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1bbc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02027f

    const v3, 0x7f020281

    const v4, 0x7f020280

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1bbd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020282

    const v3, 0x7f020284

    const v4, 0x7f020283

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x12c

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f02041f

    const v9, 0x7f0c0034

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/16 v0, 0x12d

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020422

    const v9, 0x7f0c0027

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/16 v0, 0x12e

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f02042d

    const v9, 0x7f0c0028

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/16 v0, 0x12f

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x12f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020124

    const v9, 0x7f0c0029

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/16 v0, 0x130

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x130

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const/high16 v9, 0x7f0c0000

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/16 v0, 0x131

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x131

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c002a

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/16 v0, 0x133

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020420

    const v9, 0x7f0c002b

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const/16 v0, 0x135

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x135

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c002c

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/16 v0, 0x136

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x136

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020122

    const v9, 0x7f0c002d

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const/16 v0, 0x137

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x137

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c002e

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const/16 v0, 0x139

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x139

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020123

    const v9, 0x7f0c002f

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const/16 v0, 0x13a

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x13a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f02042e

    const v9, 0x7f0c0035

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const/16 v0, 0x13c

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x13c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020422

    const v9, 0x7f0c0119

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const/16 v0, 0x13f

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x13f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c0032

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const/16 v0, 0x13e

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x13e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c00d4

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const/16 v0, 0x140

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x140

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c0030

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const/16 v0, 0x141

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x141

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c0031

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const/16 v0, 0x143

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x143

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c0033

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    const/16 v0, 0x147

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x147

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020428

    const v9, 0x7f0c0036

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const/16 v0, 0x148

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x148

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c0037

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    const/16 v0, 0x149

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x149

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020432

    const v9, 0x7f0c003a

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const/16 v0, 0x14b

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x14b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020434

    const v9, 0x7f0c003b

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    const/16 v0, 0x14c

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x14c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f02041d

    const v9, 0x7f0c003c

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    const/16 v0, 0x14d

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x14d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f02042b

    const v9, 0x7f0c0032

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const/16 v0, 0x14e

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x14e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020433

    const v9, 0x7f0c00e8

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const/16 v0, 0x14f

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x14f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f02041e

    const v9, 0x7f0c003d

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const/16 v0, 0x150

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x150

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020425

    const v9, 0x7f0c003e

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    const/16 v0, 0x151

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x151

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f02042c

    const v9, 0x7f0c0118

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    const/16 v0, 0x152

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020429

    const v9, 0x7f0c0038

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    const/16 v0, 0x153

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x153

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020418

    const v9, 0x7f0c0040

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    const/16 v0, 0x154

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020431

    const v9, 0x7f0c0041

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    const/16 v0, 0x156

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x156

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020435

    const v9, 0x7f0c0047

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    const/16 v0, 0x157

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x157

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020430

    const v9, 0x7f0c0042

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    const/16 v0, 0x158

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x158

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020427

    const v9, 0x7f0c0043

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x18f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020423

    const v9, 0x7f0c008b

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x232f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f02042a

    const v9, 0x7f0c008a

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x258

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200b5

    const v3, 0x7f0200b7

    const v4, 0x7f0200b6

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x259

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200b2

    const v3, 0x7f0200b4

    const v4, 0x7f0200b3

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x25a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200af

    const v3, 0x7f0200b1

    const v4, 0x7f0200b0

    const v5, 0x7f0c00d1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x25b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f0200b8

    const v6, 0x7f0200b9

    const/high16 v8, 0x7f0c0000

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x2bc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02011c

    const v3, 0x7f02011d

    const v4, 0x7f02011b

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x2bd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02011c

    const v3, 0x7f02011d

    const v4, 0x7f02011b

    const v5, 0x7f0c00d2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x2be

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02011f

    const v3, 0x7f020120

    const v4, 0x7f02011e

    const v5, 0x7f0c00d3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x2bf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f02011c

    const v6, 0x7f02011d

    const v8, 0x7f0c00d4

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x320

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020348

    const v3, 0x7f02034a

    const v4, 0x7f020349

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x321

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020338

    const v3, 0x7f02033a

    const v4, 0x7f020339

    const v5, 0x7f0c00d8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x322

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02033b

    const v3, 0x7f02033d

    const v4, 0x7f02033c

    const v5, 0x7f0c00d9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x323

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020335

    const v3, 0x7f020337

    const v4, 0x7f020336

    const v5, 0x7f0c00da

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x384

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020373

    const v3, 0x7f020375

    const v4, 0x7f020374

    const v5, 0x7f0c0061

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x385

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020379

    const v3, 0x7f02037b

    const v4, 0x7f02037a

    const v5, 0x7f0c0063

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x386

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020376

    const v3, 0x7f020378

    const v4, 0x7f020377

    const v5, 0x7f0c0062

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x387

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02037f

    const v3, 0x7f020381

    const v4, 0x7f020380

    const v5, 0x7f0c0067

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x388

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02037c

    const v3, 0x7f02037e

    const v4, 0x7f02037d

    const v5, 0x7f0c0064

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x389

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c0066

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x38a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c0065

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x44c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200fc

    const v3, 0x7f0200fe

    const v4, 0x7f0200fd

    const v5, 0x7f0c0061

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x44d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c0068

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x44e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200f0

    const v3, 0x7f0200f2

    const v4, 0x7f0200f1

    const v5, 0x7f0c0069

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x44f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200f3

    const v3, 0x7f0200f5

    const v4, 0x7f0200f4

    const v5, 0x7f0c006a

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x450

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200f6

    const v3, 0x7f0200f8

    const v4, 0x7f0200f7

    const v5, 0x7f0c006b

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x451

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200f9

    const v3, 0x7f0200fb

    const v4, 0x7f0200fa

    const v5, 0x7f0c006c

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x452

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const/high16 v9, 0x7f0c0000

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x453

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c006d

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x454

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const/high16 v9, 0x7f0c0000

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x455

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c006e

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x456

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const/high16 v9, 0x7f0c0000

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x457

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const/high16 v9, 0x7f0c0000

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x458

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const/high16 v9, 0x7f0c0000

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x4b0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02010b

    const v3, 0x7f02010d

    const v4, 0x7f02010c

    const v5, 0x7f0c00db

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x4b1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020111

    const v3, 0x7f020113

    const v4, 0x7f020112

    const v5, 0x7f0c00dc

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x4b2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02010e

    const v3, 0x7f020110

    const v4, 0x7f02010f

    const v5, 0x7f0c00dd

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x514

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200e4

    const v3, 0x7f0200e6

    const v4, 0x7f0200e5

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x515

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200e7

    const v3, 0x7f0200e9

    const v4, 0x7f0200e8

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x578

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02034f

    const v3, 0x7f020351

    const v4, 0x7f020350

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x579

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020352

    const v3, 0x7f020354

    const v4, 0x7f020353

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x57a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0204ee

    const v3, 0x7f0204f0

    const v4, 0x7f0204ef

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x57b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0204ec

    const v3, 0x7f0204f1

    const v4, 0x7f0204ed

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x5dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    move-object v5, p0

    move v6, v12

    move v8, v7

    move v9, v13

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x5dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    move-object v5, p0

    move v6, v12

    move v8, v7

    move v9, v14

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c00d6

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c00d7

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c0060

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c00d6

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c00d7

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v9, 0x7f0c0060

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x708

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200de

    const v3, 0x7f0200e0

    const v4, 0x7f0200df

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x709

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200e1

    const v3, 0x7f0200e3

    const v4, 0x7f0200e2

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x640

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02028b

    const v3, 0x7f02028d

    const v4, 0x7f02028c

    const v5, 0x7f0c0209

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x641

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020289

    const v3, 0x7f02028e

    const v4, 0x7f02028a

    const v5, 0x7f0c0208

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x76c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0202d6

    const v3, 0x7f0202d8

    const v4, 0x7f0202d7

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x76d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0202d0

    const v3, 0x7f0202d9

    const v4, 0x7f0202d5

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x76e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f0202d1

    const v6, 0x7f0202d2

    const v8, 0x7f0c00d8

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x76f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f0202d3

    const v6, 0x7f0202d4

    const v8, 0x7f0c00d9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xfa0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020305

    const v3, 0x7f020307

    const v4, 0x7f020306

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xfa2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0202ff

    const v3, 0x7f020301

    const v4, 0x7f020300

    const v5, 0x7f0c01ce

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xfa5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020308

    const v3, 0x7f02030a

    const v4, 0x7f020309

    const v5, 0x7f0c011a

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x7d0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200d8

    const v3, 0x7f0200da

    const v4, 0x7f0200d9

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x7d1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200db

    const v3, 0x7f0200dd

    const v4, 0x7f0200dc

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x834

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02031f

    const v3, 0x7f020321

    const v4, 0x7f020320

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x835

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020322

    const v3, 0x7f020324

    const v4, 0x7f020323

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x898

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020331

    const v3, 0x7f020333

    const v4, 0x7f020332

    const v5, 0x7f0c00de

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x899

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02032e

    const v3, 0x7f020330

    const v4, 0x7f02032f

    const v5, 0x7f0c00df

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x91f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020204

    const v3, 0x7f020206

    const v4, 0x7f020205

    const v5, 0x7f0c0096

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x924

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0201fe

    const v3, 0x7f020200

    const v4, 0x7f0201ff

    const v5, 0x7f0c0097

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x8fc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020222

    const v3, 0x7f020224

    const v4, 0x7f020223

    const v5, 0x7f0c0098

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x8fd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02023a

    const v3, 0x7f02023c

    const v4, 0x7f02023b

    const v5, 0x7f0c0099

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x928

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02023a

    const v3, 0x7f02023c

    const v4, 0x7f02023b

    const v5, 0x7f0c009a

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x8fe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020222

    const v3, 0x7f020224

    const v4, 0x7f020223

    const v5, 0x7f0c009b

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x8ff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02021f

    const v3, 0x7f020221

    const v4, 0x7f020220

    const v5, 0x7f0c009c

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x920

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0201fe

    const v3, 0x7f020200

    const v4, 0x7f0201ff

    const v5, 0x7f0c009d

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x925

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020237

    const v3, 0x7f020239

    const v4, 0x7f020238

    const v5, 0x7f0c009e

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x900

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020231

    const v3, 0x7f020233

    const v4, 0x7f020232

    const v5, 0x7f0c009f

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x901

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c00a0

    move-object v4, p0

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x902

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02022b

    const v3, 0x7f02022d

    const v4, 0x7f02022c

    const v5, 0x7f0c00a1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x903

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c00a2

    move-object v4, p0

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x904

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c00a3

    move-object v4, p0

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x921

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020237

    const v3, 0x7f020239

    const v4, 0x7f020238

    const v5, 0x7f0c00a4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x905

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c00a6

    move-object v4, p0

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x923

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02022b

    const v3, 0x7f02022d

    const v4, 0x7f02022c

    const v5, 0x7f0c00ab

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x926

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02022e

    const v3, 0x7f020230

    const v4, 0x7f02022f

    const v5, 0x7f0c00a5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x929

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020228

    const v3, 0x7f02022a

    const v4, 0x7f020229

    const v5, 0x7f0c00a7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x906

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020225

    const v6, 0x7f020225

    const v8, 0x7f0c00a8

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x92a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02021c

    const v3, 0x7f02021e

    const v4, 0x7f02021d

    const v5, 0x7f0c00ac

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x908

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02021c

    const v3, 0x7f02021e

    const v4, 0x7f02021d

    const v5, 0x7f0c00aa

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x909

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020219

    const v3, 0x7f02021b

    const v4, 0x7f02021a

    const v5, 0x7f0c00ad

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x90a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020210

    const v3, 0x7f020212

    const v4, 0x7f020211

    const v5, 0x7f0c00ae

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x90b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020210

    const v3, 0x7f020212

    const v4, 0x7f020211

    const v5, 0x7f0c00af

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x90c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c00b0

    move-object v4, p0

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x927

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020216

    const v3, 0x7f020218

    const v4, 0x7f020217

    const v5, 0x7f0c00b1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x90d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020213

    const v3, 0x7f020215

    const v4, 0x7f020214

    const v5, 0x7f0c00b2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x90f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c00b6

    move-object v4, p0

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x910

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c00b4

    move-object v4, p0

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x911

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c00b7

    move-object v4, p0

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x913

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02020d

    const v3, 0x7f02020f

    const v4, 0x7f02020e

    const v5, 0x7f0c00b3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x912

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020201

    const v3, 0x7f020203

    const v4, 0x7f020202

    const v5, 0x7f0c00b8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x915

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0201fb

    const v3, 0x7f0201fd

    const v4, 0x7f0201fc

    const v5, 0x7f0c00ba

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x916

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c00bb

    move-object v4, p0

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x922

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020207

    const v3, 0x7f020209

    const v4, 0x7f020208

    const v5, 0x7f0c00bc

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x92b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020213

    const v3, 0x7f020215

    const v4, 0x7f020214

    const v5, 0x7f0c00bd

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x91c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c00be

    move-object v4, p0

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x919

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0201f5

    const v3, 0x7f0201f7

    const v4, 0x7f0201f6

    const v5, 0x7f0c00c1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x917

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c00bf

    move-object v4, p0

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x91a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c00c3

    move-object v4, p0

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x918

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0201f8

    const v3, 0x7f0201fa

    const v4, 0x7f0201f9

    const v5, 0x7f0c00c0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x91b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c00c4

    move-object v4, p0

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x91d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c00c5

    move-object v4, p0

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x96a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02035b

    const v3, 0x7f02035d

    const v4, 0x7f02035c

    const v5, 0x7f0c00ce

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x96d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020361

    const v3, 0x7f020363

    const v4, 0x7f020362

    const v5, 0x7f0c00cf

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x96c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020355

    const v3, 0x7f020357

    const v4, 0x7f020356

    const v5, 0x7f0c00c6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x960

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020355

    const v3, 0x7f020357

    const v4, 0x7f020356

    const v5, 0x7f0c00c6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x962

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020358

    const v3, 0x7f02035a

    const v4, 0x7f020359

    const v5, 0x7f0c00c7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x963

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0201cd

    const v3, 0x7f0201cf

    const v4, 0x7f0201ce

    const v5, 0x7f0c00c8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x964

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c00c9

    move-object v4, p0

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x965

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0201ca

    const v3, 0x7f0201cc

    const v4, 0x7f0201cb

    const v5, 0x7f0c00ca

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x966

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02035e

    const v3, 0x7f020360

    const v4, 0x7f02035f

    const v5, 0x7f0c00cb

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x967

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c00c2

    move-object v4, p0

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x968

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0201c7

    const v3, 0x7f0201c9

    const v4, 0x7f0201c8

    const v5, 0x7f0c00cc

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x969

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0201c4

    const v3, 0x7f0201c6

    const v4, 0x7f0201c5

    const v5, 0x7f0c00cd

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xc1c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0202b8

    const v3, 0x7f0202ba

    const v4, 0x7f0202b9

    const v5, 0x7f0c00e1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xc1d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0202bb

    const v3, 0x7f0202bd

    const v4, 0x7f0202bc

    const v5, 0x7f0c00e2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x170e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0202be

    const v3, 0x7f0202c0

    const v4, 0x7f0202bf

    const v5, 0x7f0c00e4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x170f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0202af

    const v3, 0x7f0202b1

    const v4, 0x7f0202b0

    const v5, 0x7f0c00e5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xc20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0202b8

    const v3, 0x7f0202ba

    const v4, 0x7f0202b9

    const v5, 0x7f0c00e6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xc21

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0202bb

    const v3, 0x7f0202bd

    const v4, 0x7f0202bc

    const v5, 0x7f0c00e3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xc22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0202ac

    const v3, 0x7f0202ae

    const v4, 0x7f0202ad

    const v5, 0x7f0c00e7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const/high16 v9, 0x7f0c0000

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const/high16 v9, 0x7f0c0000

    move-object v5, p0

    move v6, v12

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xd48

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f0201dc

    move-object v5, p0

    move v8, v7

    move v9, v13

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xd49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f0201dd

    move-object v5, p0

    move v8, v7

    move v9, v14

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xdac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    move-object v5, p0

    move v6, v12

    move v8, v7

    move v9, v13

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xdad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    move-object v5, p0

    move v6, v12

    move v8, v7

    move v9, v14

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f02008a

    const v6, 0x7f02008b

    const v8, 0x7f0c0155

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020088

    const v6, 0x7f020089

    const v8, 0x7f0c015d

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xe12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020079

    const v3, 0x7f02007b

    const v4, 0x7f02007a

    const v5, 0x7f0c015d

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xe13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020079

    const v3, 0x7f02007b

    const v4, 0x7f02007a

    const v5, 0x7f0c015c

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xe14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020079

    const v3, 0x7f02007b

    const v4, 0x7f02007a

    const v5, 0x7f0c015b

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xe15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020079

    const v3, 0x7f02007b

    const v4, 0x7f02007a

    const v5, 0x7f0c015a

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xe16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020079

    const v3, 0x7f02007b

    const v4, 0x7f02007a

    const v5, 0x7f0c0159

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xe17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020079

    const v3, 0x7f02007b

    const v4, 0x7f02007a

    const v5, 0x7f0c0158

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xe18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020079

    const v3, 0x7f02007b

    const v4, 0x7f02007a

    const v5, 0x7f0c0157

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xe19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020079

    const v3, 0x7f02007b

    const v4, 0x7f02007a

    const v5, 0x7f0c0156

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xe1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020079

    const v3, 0x7f02007b

    const v4, 0x7f02007a

    const v5, 0x7f0c0155

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02047d

    const v3, 0x7f02047f

    const v4, 0x7f02047e

    const v5, 0x7f0c029c

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020471

    const v6, 0x7f020473

    const v8, 0x7f0c016d

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020474

    const v6, 0x7f020476

    const v8, 0x7f0c016e

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020477

    const v6, 0x7f020479

    const v8, 0x7f0c016f

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f02047a

    const v6, 0x7f02047c

    const v8, 0x7f0c0170

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x19ca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020024

    const v6, 0x7f020025

    const v8, 0x7f0c0162

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x19cb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020026

    const v6, 0x7f020027

    const v8, 0x7f0c0163

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x19cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020026

    const v6, 0x7f020027

    const v8, 0x7f0c0164

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x19cd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020026

    const v6, 0x7f020027

    const v8, 0x7f0c0165

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x19ce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020026

    const v6, 0x7f020027

    const v8, 0x7f0c0166

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x19cf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020026

    const v6, 0x7f020027

    const v8, 0x7f0c0167

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x19d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020026

    const v6, 0x7f020027

    const v8, 0x7f0c0168

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x19d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020026

    const v6, 0x7f020027

    const v8, 0x7f0c0169

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x19d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020026

    const v6, 0x7f020027

    const v8, 0x7f0c016a

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1c86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f02032d

    const v6, 0x7f02032d

    const v8, 0x7f0c0162

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1c87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f02032d

    const v6, 0x7f02032d

    const v8, 0x7f0c0163

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1c88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f02032d

    const v6, 0x7f02032d

    const v8, 0x7f0c0164

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1c89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f02032d

    const v6, 0x7f02032d

    const v8, 0x7f0c0165

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1c8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f02032d

    const v6, 0x7f02032d

    const v8, 0x7f0c0166

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1c8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f02032d

    const v6, 0x7f02032d

    const v8, 0x7f0c0167

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1c8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f02032d

    const v6, 0x7f02032d

    const v8, 0x7f0c0168

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1c8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f02032d

    const v6, 0x7f02032d

    const v8, 0x7f0c0169

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1c8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f02032d

    const v6, 0x7f02032d

    const v8, 0x7f0c016a

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1cea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c0162

    move-object v4, p0

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1ceb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c0163

    move-object v4, p0

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1cec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c0164

    move-object v4, p0

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1ced

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c0165

    move-object v4, p0

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1cee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c0166

    move-object v4, p0

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1cef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c0167

    move-object v4, p0

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1cf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c0168

    move-object v4, p0

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1cf1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c0169

    move-object v4, p0

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1cf2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v8, 0x7f0c016a

    move-object v4, p0

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe74

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f0201d6

    const v9, 0x7f0c0150

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe75

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f0201d8

    const v9, 0x7f0c011b

    const v10, 0x7f0c027c

    move-object v5, p0

    move v8, v7

    move v11, v7

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe76

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f0201da

    const v9, 0x7f0c0151

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe77

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f0201db

    const v9, 0x7f0c0152

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f0201d9

    const v9, 0x7f0c0153

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe79

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f0201d7

    const v9, 0x7f0c0154

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xed8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    move-object v5, p0

    move v6, v12

    move v8, v7

    move v9, v13

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xed9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    move-object v5, p0

    move v6, v12

    move v8, v7

    move v9, v14

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xf3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0202de

    const v3, 0x7f0202e0

    const v4, 0x7f0202df

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0xf3d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0202dc

    const v3, 0x7f0202e1

    const v4, 0x7f0202dd

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1644

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020101

    const v3, 0x7f020103

    const v4, 0x7f020102

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1645

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200ff

    const v3, 0x7f020104

    const v4, 0x7f020100

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1194

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020043

    const v3, 0x7f020045

    const v4, 0x7f020044

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1195

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020031

    const v3, 0x7f020033

    const v4, 0x7f020032

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x125c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020367

    const v3, 0x7f020369

    const v4, 0x7f020368

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x125d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020364

    const v3, 0x7f020366

    const v4, 0x7f020365

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x12c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f0202da

    const v9, 0x7f0c0207

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x12c1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f0202db

    const v9, 0x7f0c0206

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1388

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020370

    const v3, 0x7f020372

    const v4, 0x7f020371

    const v5, 0x7f0c01dd

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1389

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02036d

    const v3, 0x7f02036f

    const v4, 0x7f02036e

    const v5, 0x7f0c01de

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x138a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02036a

    const v3, 0x7f02036c

    const v4, 0x7f02036b

    const v5, 0x7f0c01df

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1450

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f020498

    const v9, 0x7f0c01d8

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1451

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v6, 0x7f02049c

    const v9, 0x7f0c01d9

    move-object v5, p0

    move v8, v7

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1518

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020026

    const v6, 0x7f020027

    const v8, 0x7f0c0203

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1519

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020024

    const v6, 0x7f020025

    const v8, 0x7f0c0204

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x157d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020480

    const v6, 0x7f020483

    const v8, 0x7f0c029a

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x157e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020484

    const v6, 0x7f020485

    const v8, 0x7f0c029b

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1580

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f020481

    const v6, 0x7f020482

    const v8, 0x7f0c029c

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x16a8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200a9

    const v3, 0x7f0200ab

    const v4, 0x7f0200aa

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x16a9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200ac

    const v3, 0x7f0200ae

    const v4, 0x7f0200ad

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x189c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0201d0

    const v3, 0x7f0201d2

    const v4, 0x7f0201d1

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x189d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0201d3

    const v3, 0x7f0201d5

    const v4, 0x7f0201d4

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1770

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f0202c5

    const v6, 0x7f0202c6

    const v8, 0x7f0c01a7

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1771

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f0202c3

    const v6, 0x7f0202c4

    const v8, 0x7f0c01a8

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1772

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f0202c1

    const v6, 0x7f0202c2

    const v8, 0x7f0c01a9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1773

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f0202b2

    const v6, 0x7f0202b3

    const v8, 0x7f0c01a4

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1774

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f0202b4

    const v6, 0x7f0202b5

    const v8, 0x7f0c01a5

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1775

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f0202b6

    const v6, 0x7f0202b7

    const v8, 0x7f0c01a6

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x15e0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02034f

    const v3, 0x7f020351

    const v4, 0x7f020350

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x15e1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020352

    const v3, 0x7f020354

    const v4, 0x7f020353

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1964

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0203ba

    const v3, 0x7f0203ba

    const v4, 0x7f0203ba

    const v5, 0x7f0c01d3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1965

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f0203b9

    const v6, 0x7f0203b9

    const v8, 0x7f0c01d4

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1838

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f0200a9

    const v3, 0x7f0200ab

    const v4, 0x7f0200aa

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1839

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v5, 0x7f0200ac

    const v6, 0x7f0200ae

    move-object v4, p0

    move v8, v14

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x17d7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020014

    const v3, 0x7f020016

    const v4, 0x7f020015

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x17d6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020017

    const v3, 0x7f020019

    const v4, 0x7f020018

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1a90

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02030b

    const v3, 0x7f02030d

    const v4, 0x7f02030c

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1a91

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020308

    const v3, 0x7f02030a

    const v4, 0x7f020309

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1af4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02025a

    const v3, 0x7f02025c

    const v4, 0x7f02025b

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1af5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020258

    const v3, 0x7f02025d

    const v4, 0x7f020259

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1c20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020436

    const v3, 0x7f020438

    const v4, 0x7f020437

    const v5, 0x7f0c011c

    const v6, 0x7f0c0293

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIIIII)V

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x51e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02006d

    const v3, 0x7f02006f

    const v4, 0x7f02006e

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x51f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020070

    const v3, 0x7f020072

    const v4, 0x7f020071

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x262

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020067

    const v3, 0x7f020069

    const v4, 0x7f020068

    move-object v1, p0

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x263

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f02006a

    const v3, 0x7f02006c

    const v4, 0x7f02006b

    move-object v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x264

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    const v2, 0x7f020064

    const v3, 0x7f020066

    const v4, 0x7f020065

    const v5, 0x7f0c00d1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;-><init>(Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public get(I)Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getResourceIDByIndex(I)Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;
    .locals 2
    .param p1    # I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/subview/SubViewResourceIDMap$SubResourceIDSet;

    return-object v1
.end method
