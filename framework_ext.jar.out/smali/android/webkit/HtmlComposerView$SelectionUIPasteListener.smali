.class Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionUIPasteListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 0

    .prologue
    .line 2503
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaste(Ljava/lang/String;I)V
    .locals 22
    .parameter "htmlFragment"
    .parameter "dataType"

    .prologue
    .line 2505
    const-string v18, "HtmlComposerView"

    const-string v19, "SelectionUIPasteListener onPaste"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;
    invoke-static/range {v18 .. v18}, Landroid/webkit/HtmlComposerView;->access$800(Landroid/webkit/HtmlComposerView;)Landroid/webkit/HtmlComposerInputConnection;

    move-result-object v18

    if-nez v18, :cond_0

    .line 2508
    const-string v18, "HtmlComposerView"

    const-string v19, "HtmlComposerView is already destroyed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    :goto_0
    return-void

    .line 2512
    :cond_0
    if-nez p1, :cond_1

    .line 2513
    const-string v18, "HtmlComposerView"

    const-string v19, "SelectionUIPasteListener onPaste htmlFragment == null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2517
    :cond_1
    const/4 v15, 0x0

    .line 2518
    .local v15, result:Z
    const/16 v18, 0x3

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 2520
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2522
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 2523
    .local v8, imageUri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2527
    .local v3, absoluteFilePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/webkit/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2528
    .local v5, dstFilePath:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2530
    .local v9, mFile:Ljava/io/File;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2531
    .local v13, originalFile:Ljava/io/File;
    const-wide/32 v18, 0x100000

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gtz v18, :cond_2

    .line 2533
    const/16 v18, 0x4

    move/from16 v0, v18

    iput v0, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2534
    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "####################### originalFile.length() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    :cond_2
    const/16 v16, 0x0

    .line 2540
    .local v16, src:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {v3, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 2552
    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "####################### htmlFragment : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    iget v12, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 2555
    .local v12, originWidth:I
    iget v11, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2556
    .local v11, originHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mScreenWidth:I
    invoke-static/range {v18 .. v18}, Landroid/webkit/HtmlComposerView;->access$900(Landroid/webkit/HtmlComposerView;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v19, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mScreenHeight:I
    invoke-static/range {v19 .. v19}, Landroid/webkit/HtmlComposerView;->access$1000(Landroid/webkit/HtmlComposerView;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mScreenWidth:I
    invoke-static/range {v18 .. v18}, Landroid/webkit/HtmlComposerView;->access$900(Landroid/webkit/HtmlComposerView;)I

    move-result v18

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingLeft()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getPaddingRight()I

    move-result v19

    sub-int v17, v18, v19

    .line 2557
    .local v17, width:I
    mul-int v18, v11, v17

    div-int v7, v18, v12

    .line 2559
    .local v7, height:I
    const-wide/32 v18, 0x100000

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gtz v18, :cond_e

    .line 2560
    const-string v18, "HtmlComposerView"

    const-string v19, "####################### htmlFragment : Big Data"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    if-eqz v16, :cond_4

    .line 2565
    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 2567
    .local v14, outStream:Ljava/io/FileOutputStream;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    if-gtz v18, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, ".jpeg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_c

    .line 2569
    :cond_3
    const-string v18, "HtmlComposerView"

    const-string v19, "####################### htmlFragment : Bitmap.CompressFormat.JPEG"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x64

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2571
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 2572
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2609
    .end local v14           #outStream:Ljava/io/FileOutputStream;
    :cond_4
    :goto_2
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2611
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 2612
    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "####################### htmlFragment : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    :cond_5
    if-eqz v17, :cond_f

    .line 2617
    move/from16 v0, v17

    if-le v0, v12, :cond_6

    .line 2619
    move/from16 v17, v12

    .line 2620
    move v7, v11

    .line 2623
    :cond_6
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v20, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mZoomFactor:F
    invoke-static/range {v20 .. v20}, Landroid/webkit/HtmlComposerView;->access$1200(Landroid/webkit/HtmlComposerView;)F

    move-result v20

    const/high16 v21, 0x42c8

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_7

    .line 2624
    mul-int/lit8 v18, v17, 0x64

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v19, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mZoomFactor:F
    invoke-static/range {v19 .. v19}, Landroid/webkit/HtmlComposerView;->access$1200(Landroid/webkit/HtmlComposerView;)F

    move-result v19

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2625
    mul-int/lit8 v18, v7, 0x64

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v19, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mZoomFactor:F
    invoke-static/range {v19 .. v19}, Landroid/webkit/HtmlComposerView;->access$1200(Landroid/webkit/HtmlComposerView;)F

    move-result v19

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v7, v0

    .line 2628
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v7}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;II)Z

    move-result v15

    .line 2678
    .end local v3           #absoluteFilePath:Ljava/lang/String;
    .end local v5           #dstFilePath:Ljava/lang/String;
    .end local v7           #height:I
    .end local v8           #imageUri:Landroid/net/Uri;
    .end local v9           #mFile:Ljava/io/File;
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #originHeight:I
    .end local v12           #originWidth:I
    .end local v13           #originalFile:Ljava/io/File;
    .end local v16           #src:Landroid/graphics/Bitmap;
    .end local v17           #width:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 2679
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v15, :cond_8

    .line 2680
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;
    invoke-static/range {v18 .. v18}, Landroid/webkit/HtmlComposerView;->access$1300(Landroid/webkit/HtmlComposerView;)Landroid/widget/Toast;

    move-result-object v18

    if-nez v18, :cond_14

    .line 2681
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v19, v0

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Landroid/webkit/HtmlComposerView;->access$1400(Landroid/webkit/HtmlComposerView;)Landroid/content/Context;

    move-result-object v19

    const v20, 0x10408ee

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    #setter for: Landroid/webkit/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;
    invoke-static/range {v18 .. v19}, Landroid/webkit/HtmlComposerView;->access$1302(Landroid/webkit/HtmlComposerView;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 2685
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;
    invoke-static/range {v18 .. v18}, Landroid/webkit/HtmlComposerView;->access$1300(Landroid/webkit/HtmlComposerView;)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 2689
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 2690
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    sget v19, Landroid/webkit/HtmlComposerView;->operSel:I

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/HtmlComposerView;->invokeTexttoSpeech(I)V

    .line 2692
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto/16 :goto_0

    .line 2541
    .restart local v3       #absoluteFilePath:Ljava/lang/String;
    .restart local v5       #dstFilePath:Ljava/lang/String;
    .restart local v8       #imageUri:Landroid/net/Uri;
    .restart local v9       #mFile:Ljava/io/File;
    .restart local v10       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v13       #originalFile:Ljava/io/File;
    .restart local v16       #src:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    .line 2542
    .local v6, e:Ljava/lang/OutOfMemoryError;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 2543
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v18 .. v21}, Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;->onNotification(ILjava/lang/Exception;Ljava/lang/String;)V

    .line 2546
    :cond_a
    const/4 v9, 0x0

    .line 2547
    const/4 v13, 0x0

    .line 2548
    const/4 v10, 0x0

    .line 2550
    goto/16 :goto_0

    .line 2556
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    .restart local v11       #originHeight:I
    .restart local v12       #originWidth:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mScreenHeight:I
    invoke-static/range {v18 .. v18}, Landroid/webkit/HtmlComposerView;->access$1000(Landroid/webkit/HtmlComposerView;)I

    move-result v18

    goto/16 :goto_1

    .line 2574
    .restart local v7       #height:I
    .restart local v14       #outStream:Ljava/io/FileOutputStream;
    .restart local v17       #width:I
    :cond_c
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, "png"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_d

    .line 2576
    const-string v18, "HtmlComposerView"

    const-string v19, "####################### htmlFragment : Bitmap.CompressFormat.PNG"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x64

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2578
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V

    .line 2579
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 2590
    .end local v14           #outStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    .line 2591
    .local v6, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 2583
    .end local v6           #e:Ljava/io/FileNotFoundException;
    .restart local v14       #outStream:Ljava/io/FileOutputStream;
    :cond_d
    const/16 v18, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Landroid/webkit/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v3, v5}, Landroid/webkit/HtmlComposerView;->access$1100(Landroid/webkit/HtmlComposerView;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 2585
    const-string v18, "HtmlComposerView"

    const-string v19, "####################### onPaste : copyFile Fail !!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 2594
    .end local v14           #outStream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    .line 2595
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 2602
    .end local v6           #e:Ljava/io/IOException;
    :cond_e
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #calls: Landroid/webkit/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v3, v5}, Landroid/webkit/HtmlComposerView;->access$1100(Landroid/webkit/HtmlComposerView;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 2604
    const-string v18, "HtmlComposerView"

    const-string v19, "####################### onPaste : copyFile Fail !!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2632
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->insertImage(Ljava/lang/String;)Z

    move-result v15

    goto/16 :goto_3

    .line 2636
    .end local v3           #absoluteFilePath:Ljava/lang/String;
    .end local v5           #dstFilePath:Ljava/lang/String;
    .end local v7           #height:I
    .end local v8           #imageUri:Landroid/net/Uri;
    .end local v9           #mFile:Ljava/io/File;
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #originHeight:I
    .end local v12           #originWidth:I
    .end local v13           #originalFile:Ljava/io/File;
    .end local v16           #src:Landroid/graphics/Bitmap;
    .end local v17           #width:I
    :cond_10
    const/16 v18, 0x4

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 2637
    const-string v18, "(?i)(?:(l|L)(i|I)(n|N)(e|E))(-)(h|H)(e|E)(i|I)(g|G)(h|H)(t|T)[\\s]*[\\=\\:][\\s]*([a-zA-Z]+|[0-9]+([a-zA-Z]+|%)|[0-9]+((.)[0-9]+|))[;\\s]?"

    const-string v19, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2643
    :try_start_4
    const-string v18, "<p"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_11

    .line 2645
    const-string v18, "<p"

    const-string v19, "<span"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2646
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2647
    .local v4, b:Ljava/lang/StringBuilder;
    const-string v18, "/p>"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    const-string v19, "/p>"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v19, v19, 0x3

    const-string v20, "/span>"

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2648
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2651
    .end local v4           #b:Ljava/lang/StringBuilder;
    :cond_11
    const-string v18, "<div"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_12

    .line 2653
    const-string v18, "<div"

    const-string v19, "<span"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2654
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2655
    .restart local v4       #b:Ljava/lang/StringBuilder;
    const-string v18, "/div>"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    const-string v19, "/div>"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v19, v19, 0x5

    const-string v20, "/span>"

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2656
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object p1

    .line 2664
    .end local v4           #b:Ljava/lang/StringBuilder;
    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    sget-object v19, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)Z

    move-result v15

    .line 2666
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2667
    const v18, 0x102040a

    sput v18, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 2668
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "<.*?>"

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    goto/16 :goto_3

    .line 2658
    :catch_3
    move-exception v6

    .line 2659
    .local v6, e:Ljava/lang/OutOfMemoryError;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    .line 2660
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->mNotificationCallback:Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v18 .. v21}, Landroid/webkit/HtmlComposerView$HtmlComposerNotificationToApp;->onNotification(ILjava/lang/Exception;Ljava/lang/String;)V

    goto :goto_5

    .line 2671
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    sget-object v19, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_CURSOR:Landroid/webkit/HtmlComposerView$InsertionPosition;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)Z

    move-result v15

    .line 2673
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 2674
    const v18, 0x102040a

    sput v18, Landroid/webkit/HtmlComposerView;->operSel:I

    .line 2675
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "<.*?>"

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/webkit/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    goto/16 :goto_3

    .line 2683
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;->this$0:Landroid/webkit/HtmlComposerView;

    move-object/from16 v18, v0

    #getter for: Landroid/webkit/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;
    invoke-static/range {v18 .. v18}, Landroid/webkit/HtmlComposerView;->access$1300(Landroid/webkit/HtmlComposerView;)Landroid/widget/Toast;

    move-result-object v18

    const v19, 0x10408ee

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Toast;->setText(I)V

    goto/16 :goto_4
.end method
