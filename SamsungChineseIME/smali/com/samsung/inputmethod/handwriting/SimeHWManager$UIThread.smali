.class Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;
.super Landroid/os/Handler;
.source "SimeHWManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/handwriting/SimeHWManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIThread"
.end annotation


# static fields
.field public static final MSG_CALCULATOR:I = 0x8

.field public static final MSG_CONTACTS:I = 0x9

.field public static final MSG_LUNCHBROWSER:I = 0x6

.field public static final MSG_LUNCHDIAL:I = 0x5

.field public static final MSG_LUNCHMEDIA:I = 0x7

.field public static final MSG_RECOGNIZE:I = 0x1

.field public static final MSG_UPDATE_CANDIDATE:I


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)V
    .locals 1
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 682
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 799
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 684
    :pswitch_1
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->isHandwriteInputMode()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 685
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$100(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->getHwRegCandInfo()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 686
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    const v10, 0x7f0b0108

    #calls: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showToast(I)V
    invoke-static {v9, v10}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$200(Lcom/samsung/inputmethod/handwriting/SimeHWManager;I)V

    goto :goto_0

    .line 689
    :cond_1
    const/4 v0, 0x0

    .line 690
    .local v0, composingLength:I
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$100(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, composingStr:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 693
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 694
    if-lez v0, :cond_0

    .line 695
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v1, v10}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 696
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_0

    .line 701
    .end local v0           #composingLength:I
    .end local v1           #composingStr:Ljava/lang/String;
    :pswitch_2
    iget-object v10, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    #setter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;
    invoke-static {v10, v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$302(Lcom/samsung/inputmethod/handwriting/SimeHWManager;Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;)Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    .line 702
    invoke-static {}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$400()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 703
    invoke-static {}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$500()Ljava/lang/String;

    move-result-object v9

    const-string v10, "StartTorecognize"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_2
    const/4 v9, 0x2

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    .line 705
    .local v5, pointer_end:[I
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$300(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->addPointer([I)V

    .line 706
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$300(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->getPointer()[I

    move-result-object v2

    .line 708
    .local v2, data:[I
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteRecgType()I

    move-result v6

    .line 709
    .local v6, recgType:I
    new-instance v4, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;

    invoke-direct {v4, v2, v6}, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;-><init>([II)V

    .line 712
    .local v4, hwInputData:Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$100(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->addHwdata(Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;)Z

    .line 714
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$600(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->decoding()I

    move-result v7

    .line 715
    .local v7, retStatus:I
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mHWView:Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$300(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->clear()V

    .line 716
    if-nez v7, :cond_5

    .line 717
    invoke-static {}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$400()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 718
    invoke-static {}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$500()Ljava/lang/String;

    move-result-object v9

    const-string v10, "-decoding success-- get predict"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_3
    const/4 v0, 0x0

    .line 721
    .restart local v0       #composingLength:I
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$100(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v1

    .line 722
    .restart local v1       #composingStr:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 725
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 726
    if-lez v0, :cond_4

    .line 727
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v1, v10}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 728
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 729
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    .line 739
    .end local v0           #composingLength:I
    .end local v1           #composingStr:Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$400()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 740
    invoke-static {}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$500()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--decoding result ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 731
    :cond_5
    const/4 v9, 0x2

    if-ne v9, v7, :cond_6

    .line 733
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$100(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->reset()V

    .line 734
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    goto :goto_1

    .line 736
    :cond_6
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$100(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->reset()V

    .line 737
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    const v10, 0x7f0b0108

    #calls: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showToast(I)V
    invoke-static {v9, v10}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$200(Lcom/samsung/inputmethod/handwriting/SimeHWManager;I)V

    goto :goto_1

    .line 743
    .end local v2           #data:[I
    .end local v4           #hwInputData:Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;
    .end local v5           #pointer_end:[I
    .end local v6           #recgType:I
    .end local v7           #retStatus:I
    :pswitch_3
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    .line 744
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    const/high16 v10, 0x1000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 745
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    const-string v10, "com.sec.android.app.dialertab"

    const-string v11, "com.sec.android.app.dialertab.DialerTabActivity"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    :try_start_0
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v10}, Lcom/samsung/inputmethod/SamsungIME;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 749
    :catch_0
    move-exception v3

    .line 750
    .local v3, e:Landroid/content/ActivityNotFoundException;
    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->postMessageEx(IJLjava/lang/Object;)V

    goto/16 :goto_0

    .line 754
    .end local v3           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_4
    const-string v9, "about:blank"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 755
    .local v8, uri:Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v9, v10, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    .line 756
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    const/high16 v10, 0x1000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 758
    :try_start_1
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v10}, Lcom/samsung/inputmethod/SamsungIME;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 759
    :catch_1
    move-exception v3

    .line 760
    .restart local v3       #e:Landroid/content/ActivityNotFoundException;
    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->postMessageEx(IJLjava/lang/Object;)V

    goto/16 :goto_0

    .line 764
    .end local v3           #e:Landroid/content/ActivityNotFoundException;
    .end local v8           #uri:Landroid/net/Uri;
    :pswitch_5
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iput-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    .line 765
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    const/high16 v10, 0x1000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 766
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    const-string v10, "com.sec.android.app.music"

    const-string v11, "com.sec.android.app.music.list.activity.MpMainTabActivity"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    :try_start_2
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v10}, Lcom/samsung/inputmethod/SamsungIME;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 770
    :catch_2
    move-exception v3

    .line 771
    .restart local v3       #e:Landroid/content/ActivityNotFoundException;
    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->postMessageEx(IJLjava/lang/Object;)V

    goto/16 :goto_0

    .line 775
    .end local v3           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_6
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iput-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    .line 776
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    const/high16 v10, 0x1000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 777
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    const-string v10, "com.sec.android.app.calculator"

    const-string v11, "com.sec.android.app.calculator.Calculator"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    :try_start_3
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v10}, Lcom/samsung/inputmethod/SamsungIME;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 781
    :catch_3
    move-exception v3

    .line 782
    .restart local v3       #e:Landroid/content/ActivityNotFoundException;
    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->postMessageEx(IJLjava/lang/Object;)V

    goto/16 :goto_0

    .line 786
    .end local v3           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_7
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    .line 787
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    const/high16 v10, 0x1000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 788
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    const-string v10, "com.android.contacts"

    const-string v11, "com.sec.android.app.contacts.PhoneBookTopMenuActivity"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    :try_start_4
    iget-object v9, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v9}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/inputmethod/handwriting/SimeHWManager$UIThread;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v10}, Lcom/samsung/inputmethod/SamsungIME;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 792
    :catch_4
    move-exception v3

    .line 793
    .restart local v3       #e:Landroid/content/ActivityNotFoundException;
    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->postMessageEx(IJLjava/lang/Object;)V

    goto/16 :goto_0

    .line 682
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 704
    :array_0
    .array-data 0x4
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data
.end method
