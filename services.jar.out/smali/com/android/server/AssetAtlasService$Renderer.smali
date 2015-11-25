.class Lcom/android/server/AssetAtlasService$Renderer;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssetAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Renderer"
.end annotation


# instance fields
.field private mAtlasBitmap:Landroid/graphics/Bitmap;

.field private final mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeBitmap:J

.field private final mPixelCount:I

.field final synthetic this$0:Lcom/android/server/AssetAtlasService;


# direct methods
.method constructor <init>(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;I)V
    .locals 0
    .param p3, "pixelCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p2, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p2, p0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    .line 235
    iput p3, p0, Lcom/android/server/AssetAtlasService$Renderer;->mPixelCount:I

    .line 236
    return-void
.end method

.method private acquireCanvas(II)Landroid/graphics/Canvas;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 401
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 402
    .local v0, "canvas":Landroid/graphics/Canvas;
    # invokes: Lcom/android/server/AssetAtlasService;->nAcquireAtlasCanvas(Landroid/graphics/Canvas;II)J
    invoke-static {v0, p1, p2}, Lcom/android/server/AssetAtlasService;->access$1200(Landroid/graphics/Canvas;II)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:J

    .line 403
    return-object v0
.end method

.method private releaseCanvas(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 433
    iget-wide v0, p0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:J

    # invokes: Lcom/android/server/AssetAtlasService;->nReleaseAtlasCanvas(Landroid/graphics/Canvas;J)V
    invoke-static {p1, v0, v1}, Lcom/android/server/AssetAtlasService;->access$1300(Landroid/graphics/Canvas;J)V

    .line 435
    return-void
.end method

.method private renderAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Atlas;I)Z
    .locals 38
    .param p1, "buffer"    # Landroid/view/GraphicBuffer;
    .param p2, "atlas"    # Landroid/graphics/Atlas;
    .param p3, "packCount"    # I

    .prologue
    .line 282
    new-instance v24, Landroid/graphics/Paint;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Paint;-><init>()V

    .line 283
    .local v24, "paint":Landroid/graphics/Paint;
    new-instance v33, Landroid/graphics/PorterDuffXfermode;

    sget-object v34, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v33 .. v34}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroid/view/GraphicBuffer;->getWidth()I

    move-result v33

    invoke-virtual/range {p1 .. p1}, Landroid/view/GraphicBuffer;->getHeight()I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/server/AssetAtlasService$Renderer;->acquireCanvas(II)Landroid/graphics/Canvas;

    move-result-object v7

    .line 288
    .local v7, "canvas":Landroid/graphics/Canvas;
    if-nez v7, :cond_0

    const/16 v27, 0x0

    .line 386
    :goto_0
    return v27

    .line 290
    :cond_0
    new-instance v16, Landroid/graphics/Atlas$Entry;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Atlas$Entry;-><init>()V

    .line 292
    .local v16, "entry":Landroid/graphics/Atlas$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v33, v0

    mul-int/lit8 v34, p3, 0x4

    move/from16 v0, v34

    new-array v0, v0, [J

    move-object/from16 v34, v0

    # setter for: Lcom/android/server/AssetAtlasService;->mAtlasMap:[J
    invoke-static/range {v33 .. v34}, Lcom/android/server/AssetAtlasService;->access$402(Lcom/android/server/AssetAtlasService;[J)[J

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/AssetAtlasService;->mAtlasMap:[J
    invoke-static/range {v33 .. v33}, Lcom/android/server/AssetAtlasService;->access$400(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v4

    .line 294
    .local v4, "atlasMap":[J
    const/16 v21, 0x0

    .line 296
    .local v21, "mapIndex":I
    const/16 v27, 0x0

    .line 298
    .local v27, "result":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v30

    .line 299
    .local v30, "startRender":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v8

    .line 301
    .local v8, "count":I
    const/16 v18, 0x0

    .local v18, "i":I
    move/from16 v22, v21

    .end local v21    # "mapIndex":I
    .local v22, "mapIndex":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v8, :cond_1

    .line 302
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 303
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v33

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v34

    move-object/from16 v0, p2

    move/from16 v1, v33

    move/from16 v2, v34

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Atlas;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    move-result-object v33

    if-eqz v33, :cond_5

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/AssetAtlasService;->mAtlasMap:[J
    invoke-static/range {v33 .. v33}, Lcom/android/server/AssetAtlasService;->access$400(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v33

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v22

    move/from16 v1, v33

    if-lt v0, v1, :cond_3

    .line 308
    # invokes: Lcom/android/server/AssetAtlasService;->deleteDataFile()V
    invoke-static {}, Lcom/android/server/AssetAtlasService;->access$500()V

    .line 327
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 328
    .local v12, "endRender":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v33, v34, v36

    if-eqz v33, :cond_2

    .line 329
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->mNativeBitmap:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v34

    # invokes: Lcom/android/server/AssetAtlasService;->nUploadAtlas(Landroid/view/GraphicBuffer;J)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/AssetAtlasService;->access$600(Landroid/view/GraphicBuffer;J)Z

    move-result v27

    .line 332
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 334
    .local v14, "endUpload":J
    if-eqz v27, :cond_9

    .line 335
    const/16 v25, 0x0

    .line 336
    .local v25, "programResult":Z
    new-instance v17, Ljava/io/FileDescriptor;

    invoke-direct/range {v17 .. v17}, Ljava/io/FileDescriptor;-><init>()V

    .line 337
    .local v17, "fd":Ljava/io/FileDescriptor;
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 338
    .local v23, "mapLength":[I
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v6, v0, [I

    .line 343
    .local v6, "bufferLength":[I
    const/16 v33, 0xc8

    move/from16 v0, v33

    new-array v0, v0, [J

    move-object/from16 v20, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    .local v20, "map":[J
    :try_start_2
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    # invokes: Lcom/android/server/AssetAtlasService;->nBuildProgramBinaries(Ljava/io/FileDescriptor;[I[J[I)Z
    invoke-static {v0, v6, v1, v2}, Lcom/android/server/AssetAtlasService;->access$700(Ljava/io/FileDescriptor;[I[J[I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v25

    .line 350
    :goto_2
    if-eqz v25, :cond_9

    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileDescriptor;->valid()Z

    move-result v33

    if-eqz v33, :cond_9

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    # setter for: Lcom/android/server/AssetAtlasService;->mFD:Ljava/io/FileDescriptor;
    invoke-static {v0, v1}, Lcom/android/server/AssetAtlasService;->access$802(Lcom/android/server/AssetAtlasService;Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget v34, v23, v34

    move/from16 v0, v34

    new-array v0, v0, [J

    move-object/from16 v34, v0

    # setter for: Lcom/android/server/AssetAtlasService;->mProgramMap:[J
    invoke-static/range {v33 .. v34}, Lcom/android/server/AssetAtlasService;->access$902(Lcom/android/server/AssetAtlasService;[J)[J

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget v34, v6, v34

    # setter for: Lcom/android/server/AssetAtlasService;->mBinaryLength:I
    invoke-static/range {v33 .. v34}, Lcom/android/server/AssetAtlasService;->access$1002(Lcom/android/server/AssetAtlasService;I)I

    .line 355
    const/16 v18, 0x0

    move/from16 v19, v18

    .end local v18    # "i":I
    .local v19, "i":I
    :goto_3
    const/16 v33, 0x0

    aget v33, v23, v33

    move/from16 v0, v19

    move/from16 v1, v33

    if-ge v0, v1, :cond_8

    .line 356
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "ProgramEntry#"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "%2d"

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    div-int/lit8 v37, v19, 0x4

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 358
    .local v29, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/AssetAtlasService;->mProgramMap:[J
    invoke-static/range {v33 .. v33}, Lcom/android/server/AssetAtlasService;->access$900(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v33

    aget-wide v34, v20, v19

    aput-wide v34, v33, v19

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/AssetAtlasService;->mProgramMap:[J
    invoke-static/range {v33 .. v33}, Lcom/android/server/AssetAtlasService;->access$900(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v33

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "i":I
    .restart local v18    # "i":I
    aget-wide v34, v33, v19

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v28

    .line 360
    .local v28, "s":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " 0x"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v33

    rsub-int/lit8 v33, v33, 0x10

    if-lez v33, :cond_7

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "%0"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v35

    rsub-int/lit8 v35, v35, 0x10

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "d"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    :goto_4
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/AssetAtlasService;->mProgramMap:[J
    invoke-static/range {v33 .. v33}, Lcom/android/server/AssetAtlasService;->access$900(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v33

    aget-wide v34, v20, v18

    aput-wide v34, v33, v18

    .line 363
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/AssetAtlasService;->mProgramMap:[J
    invoke-static/range {v34 .. v34}, Lcom/android/server/AssetAtlasService;->access$900(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v34

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "i":I
    .restart local v19    # "i":I
    aget-wide v34, v34, v18

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/AssetAtlasService;->mProgramMap:[J
    invoke-static/range {v33 .. v33}, Lcom/android/server/AssetAtlasService;->access$900(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v33

    aget-wide v34, v20, v19

    aput-wide v34, v33, v19

    .line 365
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/AssetAtlasService;->mProgramMap:[J
    invoke-static/range {v34 .. v34}, Lcom/android/server/AssetAtlasService;->access$900(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v34

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "i":I
    .restart local v18    # "i":I
    aget-wide v34, v34, v19

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/AssetAtlasService;->mProgramMap:[J
    invoke-static/range {v33 .. v33}, Lcom/android/server/AssetAtlasService;->access$900(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v33

    aget-wide v34, v20, v18

    aput-wide v34, v33, v18

    .line 367
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v34, v0

    # getter for: Lcom/android/server/AssetAtlasService;->mProgramMap:[J
    invoke-static/range {v34 .. v34}, Lcom/android/server/AssetAtlasService;->access$900(Lcom/android/server/AssetAtlasService;)[J

    move-result-object v34

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "i":I
    .restart local v19    # "i":I
    aget-wide v34, v34, v18

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 368
    const-string v33, "AssetAtlasService"

    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 383
    .end local v6    # "bufferLength":[I
    .end local v12    # "endRender":J
    .end local v14    # "endUpload":J
    .end local v17    # "fd":Ljava/io/FileDescriptor;
    .end local v19    # "i":I
    .end local v20    # "map":[J
    .end local v23    # "mapLength":[I
    .end local v25    # "programResult":Z
    .end local v28    # "s":Ljava/lang/String;
    .end local v29    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v33

    move/from16 v21, v22

    .end local v8    # "count":I
    .end local v22    # "mapIndex":I
    .end local v30    # "startRender":J
    .restart local v21    # "mapIndex":I
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/AssetAtlasService$Renderer;->releaseCanvas(Landroid/graphics/Canvas;)V

    throw v33

    .line 312
    .end local v21    # "mapIndex":I
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "count":I
    .restart local v18    # "i":I
    .restart local v22    # "mapIndex":I
    .restart local v30    # "startRender":J
    :cond_3
    :try_start_4
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 313
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Atlas$Entry;->x:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Atlas$Entry;->y:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 314
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/graphics/Atlas$Entry;->rotated:Z

    move/from16 v33, v0

    if-eqz v33, :cond_4

    .line 315
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    const/16 v34, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 316
    const/high16 v33, 0x42b40000    # 90.0f

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 318
    :cond_4
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v0, v33

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v7, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 319
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 320
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "mapIndex":I
    .restart local v21    # "mapIndex":I
    :try_start_5
    iget-wide v0, v5, Landroid/graphics/Bitmap;->mNativeBitmap:J

    move-wide/from16 v34, v0

    aput-wide v34, v4, v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 321
    add-int/lit8 v22, v21, 0x1

    .end local v21    # "mapIndex":I
    .restart local v22    # "mapIndex":I
    :try_start_6
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Atlas$Entry;->x:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v34, v0

    aput-wide v34, v4, v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 322
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "mapIndex":I
    .restart local v21    # "mapIndex":I
    :try_start_7
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Atlas$Entry;->y:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v34, v0

    aput-wide v34, v4, v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 323
    add-int/lit8 v22, v21, 0x1

    .end local v21    # "mapIndex":I
    .restart local v22    # "mapIndex":I
    :try_start_8
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/graphics/Atlas$Entry;->rotated:Z

    move/from16 v33, v0

    if-eqz v33, :cond_6

    const-wide/16 v34, 0x1

    :goto_6
    aput-wide v34, v4, v21

    :cond_5
    move/from16 v21, v22

    .line 301
    .end local v22    # "mapIndex":I
    .restart local v21    # "mapIndex":I
    add-int/lit8 v18, v18, 0x1

    move/from16 v22, v21

    .end local v21    # "mapIndex":I
    .restart local v22    # "mapIndex":I
    goto/16 :goto_1

    .line 323
    :cond_6
    const-wide/16 v34, 0x0

    goto :goto_6

    .line 347
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v6    # "bufferLength":[I
    .restart local v12    # "endRender":J
    .restart local v14    # "endUpload":J
    .restart local v17    # "fd":Ljava/io/FileDescriptor;
    .restart local v20    # "map":[J
    .restart local v23    # "mapLength":[I
    .restart local v25    # "programResult":Z
    :catch_0
    move-exception v9

    .line 348
    .local v9, "e":Ljava/io/IOException;
    const-string v33, "AssetAtlasService"

    const-string v34, "Assetatlas build program binaries fail"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 360
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v28    # "s":Ljava/lang/String;
    .restart local v29    # "str":Ljava/lang/String;
    :cond_7
    const-string v33, ""

    goto/16 :goto_4

    .line 370
    .end local v18    # "i":I
    .end local v28    # "s":Ljava/lang/String;
    .end local v29    # "str":Ljava/lang/String;
    .restart local v19    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    move-object/from16 v33, v0

    # getter for: Lcom/android/server/AssetAtlasService;->mProgramBinariesReady:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v33 .. v33}, Lcom/android/server/AssetAtlasService;->access$1100(Lcom/android/server/AssetAtlasService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v33

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 373
    .end local v6    # "bufferLength":[I
    .end local v17    # "fd":Ljava/io/FileDescriptor;
    .end local v19    # "i":I
    .end local v20    # "map":[J
    .end local v23    # "mapLength":[I
    .end local v25    # "programResult":Z
    :cond_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 376
    .local v10, "endBuild":J
    sub-long v34, v12, v30

    move-wide/from16 v0, v34

    long-to-float v0, v0

    move/from16 v33, v0

    const/high16 v34, 0x447a0000    # 1000.0f

    div-float v33, v33, v34

    const/high16 v34, 0x447a0000    # 1000.0f

    div-float v26, v33, v34

    .line 377
    .local v26, "renderDuration":F
    sub-long v34, v14, v12

    move-wide/from16 v0, v34

    long-to-float v0, v0

    move/from16 v33, v0

    const/high16 v34, 0x447a0000    # 1000.0f

    div-float v33, v33, v34

    const/high16 v34, 0x447a0000    # 1000.0f

    div-float v32, v33, v34

    .line 378
    .local v32, "uploadDuration":F
    const-string v33, "AssetAtlasService"

    const-string v34, "Rendered atlas in %.2fms (%.2f+%.2fms)"

    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    add-float v37, v26, v32

    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x2

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 383
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/AssetAtlasService$Renderer;->releaseCanvas(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .end local v8    # "count":I
    .end local v10    # "endBuild":J
    .end local v12    # "endRender":J
    .end local v14    # "endUpload":J
    .end local v22    # "mapIndex":I
    .end local v26    # "renderDuration":F
    .end local v30    # "startRender":J
    .end local v32    # "uploadDuration":F
    .restart local v21    # "mapIndex":I
    :catchall_1
    move-exception v33

    goto/16 :goto_5
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 251
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    iget-object v3, p0, Lcom/android/server/AssetAtlasService$Renderer;->mBitmaps:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/AssetAtlasService$Renderer;->mPixelCount:I

    iget-object v5, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    # getter for: Lcom/android/server/AssetAtlasService;->mVersionName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/AssetAtlasService;->access$000(Lcom/android/server/AssetAtlasService;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/AssetAtlasService;->chooseConfiguration(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/AssetAtlasService;->access$100(Lcom/android/server/AssetAtlasService;Ljava/util/ArrayList;ILjava/lang/String;)Lcom/android/server/AssetAtlasService$Configuration;

    move-result-object v1

    .line 252
    .local v1, "config":Lcom/android/server/AssetAtlasService$Configuration;
    const-string v2, "AssetAtlasService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded configuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    if-eqz v1, :cond_0

    .line 255
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    iget v4, v1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    const/16 v5, 0x100

    invoke-static {v3, v4, v6, v5}, Landroid/view/GraphicBuffer;->create(IIII)Landroid/view/GraphicBuffer;

    move-result-object v3

    # setter for: Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;
    invoke-static {v2, v3}, Lcom/android/server/AssetAtlasService;->access$202(Lcom/android/server/AssetAtlasService;Landroid/view/GraphicBuffer;)Landroid/view/GraphicBuffer;

    .line 258
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    # getter for: Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;
    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->access$200(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 259
    new-instance v0, Landroid/graphics/Atlas;

    iget-object v2, v1, Lcom/android/server/AssetAtlasService$Configuration;->type:Landroid/graphics/Atlas$Type;

    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->width:I

    iget v4, v1, Lcom/android/server/AssetAtlasService$Configuration;->height:I

    iget v5, v1, Lcom/android/server/AssetAtlasService$Configuration;->flags:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Atlas;-><init>(Landroid/graphics/Atlas$Type;III)V

    .line 260
    .local v0, "atlas":Landroid/graphics/Atlas;
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    # getter for: Lcom/android/server/AssetAtlasService;->mBuffer:Landroid/view/GraphicBuffer;
    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->access$200(Lcom/android/server/AssetAtlasService;)Landroid/view/GraphicBuffer;

    move-result-object v2

    iget v3, v1, Lcom/android/server/AssetAtlasService$Configuration;->count:I

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/AssetAtlasService$Renderer;->renderAtlas(Landroid/view/GraphicBuffer;Landroid/graphics/Atlas;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/android/server/AssetAtlasService$Renderer;->this$0:Lcom/android/server/AssetAtlasService;

    # getter for: Lcom/android/server/AssetAtlasService;->mAtlasReady:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/AssetAtlasService;->access$300(Lcom/android/server/AssetAtlasService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 265
    .end local v0    # "atlas":Landroid/graphics/Atlas;
    :cond_0
    return-void
.end method
