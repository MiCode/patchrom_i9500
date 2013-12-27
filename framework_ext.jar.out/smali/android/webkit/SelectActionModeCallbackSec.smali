.class public Landroid/webkit/SelectActionModeCallbackSec;
.super Ljava/lang/Object;
.source "SelectActionModeCallbackSec.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# static fields
.field public static final ACTION_SEC_TRANSLATE:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE"

.field public static final ACTION_SEC_TRANSLATE_GET_SUPPORTED_LANGUAGES:Ljava/lang/String; = "com.sec.android.app.translator.GET_SUPPORTED_LANGUAGES"

.field public static final ACTION_SEC_TRANSLATE_NON_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

.field public static final ACTION_SEC_TRANSLATE_RESULT:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_RESULT"

.field public static final EXTRA_NAME_CALLER:Ljava/lang/String; = "caller"

.field public static final EXTRA_NAME_HTML_SOURCE_TEXT:Ljava/lang/String; = "html_source_text"

.field public static final EXTRA_NAME_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_NAME_RESULT_CODE:Ljava/lang/String; = "result_code"

.field public static final EXTRA_NAME_SOURCE_LANGUAGE:Ljava/lang/String; = "source_language"

.field public static final EXTRA_NAME_SOURCE_TEXT:Ljava/lang/String; = "source_text"

.field public static final EXTRA_NAME_SUPPORTED_LANGUAGES:Ljava/lang/String; = "supported_languages"

.field public static final EXTRA_NAME_TARGET_LANGUAGE:Ljava/lang/String; = "target_language"

.field public static final EXTRA_NAME_TARGET_TEXT:Ljava/lang/String; = "target_text"

.field public static final EXTRA_NAME_USE_BROADCAST_RECEIVER:Ljava/lang/String; = "use_broadcast_receiver"

.field public static final EXTRA_VALUE_INPUT_MODE:Ljava/lang/String; = "input"

.field public static final EXTRA_VALUE_RESULT_CANCEL:I = 0x0

.field public static final EXTRA_VALUE_RESULT_OK:I = 0x1

.field public static final EXTRA_VALUE_VIEWER_MODE:Ljava/lang/String; = "viewer"

.field private static final GET_SUPPORTED_LANGUAGES:I = 0xc8

.field public static final LANGUAGE_CODE_CHINESE:Ljava/lang/String; = "ch"

.field public static final LANGUAGE_CODE_ENGLISH:Ljava/lang/String; = "en"

.field public static final LANGUAGE_CODE_JAPANESE:Ljava/lang/String; = "ja"

.field public static final LANGUAGE_CODE_KOREAN:Ljava/lang/String; = "ko"

.field private static final LOGTAG:Ljava/lang/String; = "SelectActionModeCallbackSec"

.field private static final TRANSLATE_REQUEST:I = 0xc9


# instance fields
.field private isSelectTypePassword:Z

.field private mActionMode:Landroid/view/ActionMode;

.field public mIsEditable:Z

.field private mRecreate:Z

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->isSelectTypePassword:Z

    return-void
.end method

.method private setMenuVisibility(Landroid/view/Menu;ZI)V
    .locals 1
    .parameter "menu"
    .parameter "visible"
    .parameter "resourceId"

    .prologue
    .line 446
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 447
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 448
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 450
    :cond_0
    return-void
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 169
    :cond_0
    return-void
.end method

.method finish(Z)V
    .locals 0
    .parameter "recreate"

    .prologue
    .line 173
    iput-boolean p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    .line 174
    invoke-virtual {p0}, Landroid/webkit/SelectActionModeCallbackSec;->finish()V

    .line 175
    return-void
.end method

.method getSelectTypePassword()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->isSelectTypePassword:Z

    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 314
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 422
    const/4 v8, 0x0

    .line 424
    :goto_0
    return v8

    .line 316
    :sswitch_0
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->cutSelectionSec()V

    .line 317
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 424
    :goto_1
    const/4 v8, 0x1

    goto :goto_0

    .line 322
    :sswitch_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/String;

    const-string v9, "com.sec.android.app.translator"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, pkgName:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 326
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->copySelectionSecUseDefaultClipboard()Z

    .line 332
    :goto_2
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 333
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 329
    :cond_0
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->copySelectionSec()Z

    goto :goto_2

    .line 337
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #pkgName:Ljava/lang/String;
    :sswitch_2
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 338
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 346
    :sswitch_3
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 347
    const-string v8, "SelectActionModeCallbackSec"

    const-string v9, "mWebView.getSelectionSec() is null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 350
    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 351
    .local v6, selection:Ljava/lang/StringBuffer;
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    const/16 v9, 0x7530

    if-le v8, v9, :cond_2

    .line 352
    const-string v8, "SelectActionModeCallbackSec"

    const-string v9, "onActionItemClicked: selected string is too long. Cut it"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/16 v8, 0x7530

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 356
    :cond_2
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    .line 357
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 358
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 362
    .end local v6           #selection:Ljava/lang/StringBuffer;
    :sswitch_4
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->selectAllSec()Z

    goto/16 :goto_1

    .line 366
    :sswitch_5
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v5

    .line 367
    .local v5, sel:Ljava/lang/String;
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 368
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 369
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/webkit/WebViewClassic;->showFindDialog(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 374
    .end local v5           #sel:Ljava/lang/String;
    :sswitch_6
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    .line 375
    const-string v8, "SelectActionModeCallbackSec"

    const-string v9, "mWebView.getSelectionSec() is null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 379
    :cond_3
    new-instance v7, Ljava/lang/StringBuffer;

    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 380
    .local v7, stringBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    const/16 v9, 0x7d0

    if-le v8, v9, :cond_4

    .line 381
    const/16 v8, 0x7d0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 384
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v1, i:Landroid/content/Intent;
    const-string v8, "query"

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 387
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 389
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    instance-of v8, v8, Landroid/app/Activity;

    if-nez v8, :cond_5

    .line 390
    const/high16 v8, 0x1000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 392
    :cond_5
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 396
    .end local v1           #i:Landroid/content/Intent;
    .end local v7           #stringBuffer:Ljava/lang/StringBuffer;
    :sswitch_7
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->pasteFromClipboardEx()V

    .line 397
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto/16 :goto_1

    .line 402
    :sswitch_8
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 403
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const/high16 v8, 0x1000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 405
    const-string v8, "mode"

    const-string v9, "viewer"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v8, "source_text"

    iget-object v9, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string v8, "html_source_text"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 411
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 414
    iget-object v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 415
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 417
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 418
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 314
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020020 -> :sswitch_0
        0x1020021 -> :sswitch_1
        0x1020022 -> :sswitch_2
        0x102027a -> :sswitch_7
        0x102027c -> :sswitch_3
        0x1020493 -> :sswitch_4
        0x1020494 -> :sswitch_5
        0x1020495 -> :sswitch_6
        0x1020496 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 12
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v9

    sget v11, Lcom/android/internal/R$menu;->webview_copy:I

    invoke-virtual {v9, v11, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v9, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    .local v6, context:Landroid/content/Context;
    const-string v9, "clipboard"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipboardManager;

    move-object v5, v9

    check-cast v5, Landroid/content/ClipboardManager;

    .local v5, cm:Landroid/content/ClipboardManager;
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v8

    .local v8, isFocusable:Z
    iget-object v9, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v7

    .local v7, isEditable:Z
    iget-boolean v9, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v9, :cond_miui_0

    iput-boolean v7, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    :cond_miui_0
    if-eqz v7, :cond_1

    invoke-virtual {v5}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    move v3, v10

    .local v3, canPaste:Z
    :goto_0
    if-nez v7, :cond_2

    if-eqz v8, :cond_2

    move v2, v10

    .local v2, canFind:Z
    :goto_1
    const/4 v1, 0x0

    .local v1, canCut:Z
    :cond_0
    const/4 v0, 0x1

    .local v0, canCopy:Z

    const/4 v4, 0x1

    .local v4, canWebSearch:Z
    sget v9, Lcom/android/internal/R$id;->find:I

    invoke-direct {p0, p2, v2, v9}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    sget v9, Lcom/android/internal/R$id;->paste:I

    invoke-direct {p0, p2, v3, v9}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    sget v9, Lcom/android/internal/R$id;->cut:I

    invoke-direct {p0, p2, v1, v9}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    sget v9, Lcom/android/internal/R$id;->copy:I

    invoke-direct {p0, p2, v0, v9}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    sget v9, Lcom/android/internal/R$id;->websearch:I

    invoke-direct {p0, p2, v4, v9}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    return v10

    .end local v0           #canCopy:Z
    .end local v1           #canCut:Z
    .end local v2           #canFind:Z
    .end local v3           #canPaste:Z
    .end local v4           #canWebSearch:Z
    :cond_1
    move v3, v1

    goto :goto_0

    .restart local v3       #canPaste:Z
    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public onCreateActionMode_old(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 13
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v11

    const v12, 0x1140008

    invoke-virtual {v11, v12, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 184
    iget-object v11, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 208
    .local v6, context:Landroid/content/Context;
    const-string v11, "clipboard"

    invoke-virtual {v6, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ClipboardManager;

    move-object v4, v11

    check-cast v4, Landroid/content/ClipboardManager;

    .line 210
    .local v4, cm:Landroid/content/ClipboardManager;
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v7

    .line 215
    .local v7, isFocusable:Z
    iget-boolean v11, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v11, :cond_0

    .line 216
    iget-object v11, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v11

    iput-boolean v11, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    .line 219
    :cond_0
    const/4 v8, 0x0

    .line 220
    .local v8, isTypePassword:Z
    const/4 v10, 0x0

    .line 221
    .local v10, variation:I
    iget-object v11, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v11, v11, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v11, :cond_1

    .line 222
    iget-object v11, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v11, v11, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getInputType()I

    move-result v11

    and-int/lit16 v10, v11, 0xff0

    .line 224
    const/16 v11, 0xe0

    if-ne v10, v11, :cond_1

    .line 225
    const/4 v8, 0x1

    .line 228
    :cond_1
    iput-boolean v8, p0, Landroid/webkit/SelectActionModeCallbackSec;->isSelectTypePassword:Z

    .line 232
    iget-boolean v11, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v11, :cond_4

    invoke-virtual {v4}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v3, 0x1

    .line 233
    .local v3, canPaste:Z
    :goto_0
    iget-boolean v11, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-nez v11, :cond_5

    if-eqz v7, :cond_5

    const/4 v2, 0x1

    .line 234
    .local v2, canFind:Z
    :goto_1
    iget-boolean v11, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v11, :cond_6

    if-nez v8, :cond_6

    const/4 v1, 0x1

    .line 235
    .local v1, canCut:Z
    :goto_2
    iget-object v11, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebSettingsClassic;->isBrowserApp()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 236
    and-int/2addr v3, v7

    .line 237
    and-int/2addr v2, v7

    .line 238
    and-int/2addr v1, v7

    .line 242
    :cond_2
    iget-object v11, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebSettingsClassic;->getNewActionPopup()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 243
    const/4 v11, 0x0

    const v12, 0x1020494

    invoke-direct {p0, p2, v11, v12}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 244
    const/4 v11, 0x0

    const v12, 0x1020022

    invoke-direct {p0, p2, v11, v12}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 245
    const/4 v11, 0x0

    const v12, 0x1020020

    invoke-direct {p0, p2, v11, v12}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 246
    const/4 v11, 0x0

    const v12, 0x1020021

    invoke-direct {p0, p2, v11, v12}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 247
    const/4 v11, 0x0

    const v12, 0x102027c

    invoke-direct {p0, p2, v11, v12}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 248
    const/4 v11, 0x0

    const v12, 0x1020495

    invoke-direct {p0, p2, v11, v12}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 249
    const/4 v11, 0x0

    const v12, 0x102027a

    invoke-direct {p0, p2, v11, v12}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 250
    const/4 v11, 0x0

    const v12, 0x1020496

    invoke-direct {p0, p2, v11, v12}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 251
    const/4 v11, 0x0

    const v12, 0x1020493

    invoke-direct {p0, p2, v11, v12}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 302
    :cond_3
    :goto_3
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    .line 303
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 304
    const/4 v11, 0x1

    return v11

    .line 232
    .end local v1           #canCut:Z
    .end local v2           #canFind:Z
    .end local v3           #canPaste:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 233
    .restart local v3       #canPaste:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 234
    .restart local v2       #canFind:Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 253
    .restart local v1       #canCut:Z
    :cond_7
    const v11, 0x1020494

    invoke-direct {p0, p2, v2, v11}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 254
    const v11, 0x1020022

    invoke-direct {p0, p2, v3, v11}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 255
    const v11, 0x1020020

    invoke-direct {p0, p2, v1, v11}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 256
    iget-boolean v11, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    if-eqz v11, :cond_8

    .line 257
    const v11, 0x1020021

    invoke-direct {p0, p2, v1, v11}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 258
    const v11, 0x102027c

    invoke-direct {p0, p2, v1, v11}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 259
    const v11, 0x1020495

    invoke-direct {p0, p2, v1, v11}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 261
    :cond_8
    iget-boolean v11, p0, Landroid/webkit/SelectActionModeCallbackSec;->mIsEditable:Z

    const v12, 0x102027a

    invoke-direct {p0, p2, v11, v12}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 262
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 263
    .local v9, pm:Landroid/content/pm/PackageManager;
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.sec.android.app.translator.TRANSLATE"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 264
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_9

    .line 267
    const/4 v11, 0x0

    const v12, 0x1020496

    invoke-direct {p0, p2, v11, v12}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    .line 273
    :goto_4
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mActionMode:Landroid/view/ActionMode;

    .line 280
    iget-object v11, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 281
    .local v5, config:Landroid/content/res/Configuration;
    iget v11, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v11, v11, 0x4

    const/4 v12, 0x4

    if-eq v11, v12, :cond_3

    .line 282
    iget v11, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    .line 283
    const/4 v11, 0x0

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x6

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 284
    const/4 v11, 0x1

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 285
    const/4 v11, 0x2

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 286
    const/4 v11, 0x3

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 287
    const/4 v11, 0x4

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 288
    const/4 v11, 0x5

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 289
    const/4 v11, 0x6

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_3

    .line 271
    .end local v5           #config:Landroid/content/res/Configuration;
    :cond_9
    const/4 v11, 0x1

    const v12, 0x1020496

    invoke-direct {p0, p2, v11, v12}, Landroid/webkit/SelectActionModeCallbackSec;->setMenuVisibility(Landroid/view/Menu;ZI)V

    goto :goto_4

    .line 291
    .restart local v5       #config:Landroid/content/res/Configuration;
    :cond_a
    const/4 v11, 0x0

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x6

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 292
    const/4 v11, 0x1

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 293
    const/4 v11, 0x2

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 294
    const/4 v11, 0x3

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 295
    const/4 v11, 0x4

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 296
    const/4 v11, 0x5

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 297
    const/4 v11, 0x6

    invoke-interface {p2, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 431
    iget-boolean v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mRecreate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->clearSelection()V

    .line 440
    :cond_0
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->isSelectionResetCalled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 441
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->performSelectionDoneAction()V

    .line 443
    :cond_1
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method protected onSetWebView()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method setWebViewClassic(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "webViewClassic"

    .prologue
    .line 147
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallbackSec;->mWebView:Landroid/webkit/WebViewClassic;

    .line 148
    invoke-virtual {p0}, Landroid/webkit/SelectActionModeCallbackSec;->onSetWebView()V

    .line 149
    return-void
.end method
