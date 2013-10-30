.class Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimIntentProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/SimIntentProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/SimIntentProcessor;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/SimIntentProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 33
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, action:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v29, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 98
    const-string v29, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 103
    .local v25, reason:Ljava/lang/String;
    if-eqz v25, :cond_2

    const-string v29, "lock"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 104
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->dismissTutorialDialog()V

    goto :goto_0

    .line 106
    :cond_2
    if-eqz v25, :cond_3

    const-string v29, "homekey"

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    .line 108
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->dismissTutorialDialog()V

    .line 111
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/SamsungIME;->getDialogMgr()Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    move-result-object v29

    if-eqz v29, :cond_0

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/SamsungIME;->getDialogMgr()Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->ClearAllPopupMenu()V

    goto :goto_0

    .line 114
    .end local v25           #reason:Ljava/lang/String;
    :cond_4
    const-string v29, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 119
    sget-boolean v29, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    if-eqz v29, :cond_0

    .line 124
    sget-boolean v29, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FLOATING_BY_CMKEY:Z

    if-nez v29, :cond_0

    sget-boolean v29, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    if-nez v29, :cond_0

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v19

    .line 129
    .local v19, info:Landroid/view/inputmethod/EditorInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v18

    .line 130
    .local v18, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v19, :cond_0

    if-eqz v18, :cond_0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v29, v0

    if-eqz v29, :cond_0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 137
    const/4 v6, 0x0

    .line 138
    .local v6, actraArrageMode:Ljava/lang/String;
    const/4 v8, 0x0

    .line 139
    .local v8, arrangeSplited:I
    const/4 v7, 0x0

    .line 142
    .local v7, arrageUndefined:I
    :try_start_0
    const-class v29, Landroid/content/Intent;

    const-string v30, "EXTRA_ARRANGE_MODE"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 143
    .local v15, field:Ljava/lang/reflect/Field;
    invoke-virtual {v15, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v29

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 153
    .end local v15           #field:Ljava/lang/reflect/Field;
    :goto_1
    :try_start_1
    const-class v29, Landroid/content/res/Configuration;

    const-string v30, "ARRANGE_SPLITED"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 154
    .restart local v15       #field:Ljava/lang/reflect/Field;
    invoke-virtual {v15, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5

    move-result v8

    .line 164
    .end local v15           #field:Ljava/lang/reflect/Field;
    :goto_2
    :try_start_2
    const-class v29, Landroid/content/res/Configuration;

    const-string v30, "ARRANGE_UNDEFINED"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 165
    .restart local v15       #field:Ljava/lang/reflect/Field;
    invoke-virtual {v15, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_8

    move-result v7

    .line 174
    .end local v15           #field:Ljava/lang/reflect/Field;
    :goto_3
    if-eqz v6, :cond_0

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 175
    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 177
    .local v22, mode:I
    move/from16 v0, v22

    if-ne v0, v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/SamsungIME;->isFloatingKeyboardForMultiWindow()Z

    move-result v29

    if-nez v29, :cond_5

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v29

    if-eqz v29, :cond_0

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/inputmethod/SamsungIME;->SetFloatingKeyboardForMultiWindow(Z)V

    goto/16 :goto_0

    .line 144
    .end local v22           #mode:I
    :catch_0
    move-exception v13

    .line 145
    .local v13, e:Ljava/lang/NoSuchFieldException;
    const-string v29, "SimIntentProcesser"

    const-string v30, "NoSuchField EXTRA_ARRANGE_MODE"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    .end local v13           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v13

    .line 147
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v29, "SimIntentProcesser"

    const-string v30, "Argument is error"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 148
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v13

    .line 149
    .local v13, e:Ljava/lang/IllegalAccessException;
    const-string v29, "SimIntentProcesser"

    const-string v30, "Access error"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 155
    .end local v13           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v13

    .line 156
    .local v13, e:Ljava/lang/NoSuchFieldException;
    const-string v29, "SimIntentProcesser"

    const-string v30, "NoSuchField ARRANGE_SPLITED"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 157
    .end local v13           #e:Ljava/lang/NoSuchFieldException;
    :catch_4
    move-exception v13

    .line 158
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v29, "SimIntentProcesser"

    const-string v30, "Argument is error"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 159
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v13

    .line 160
    .local v13, e:Ljava/lang/IllegalAccessException;
    const-string v29, "SimIntentProcesser"

    const-string v30, "Access error"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 166
    .end local v13           #e:Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v13

    .line 167
    .local v13, e:Ljava/lang/NoSuchFieldException;
    const-string v29, "SimIntentProcesser"

    const-string v30, "NoSuchField ARRANGE_UNDEFINED"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 168
    .end local v13           #e:Ljava/lang/NoSuchFieldException;
    :catch_7
    move-exception v13

    .line 169
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v29, "SimIntentProcesser"

    const-string v30, "Argument is error"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 170
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v13

    .line 171
    .local v13, e:Ljava/lang/IllegalAccessException;
    const-string v29, "SimIntentProcesser"

    const-string v30, "Access error"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 187
    .end local v13           #e:Ljava/lang/IllegalAccessException;
    .restart local v22       #mode:I
    :cond_5
    move/from16 v0, v22

    if-eq v0, v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/SamsungIME;->isFloatingKeyboardForMultiWindow()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v29

    if-eqz v29, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/inputmethod/SamsungIME;->SetFloatingKeyboardForMultiWindow(Z)V

    goto/16 :goto_0

    .line 202
    .end local v6           #actraArrageMode:Ljava/lang/String;
    .end local v7           #arrageUndefined:I
    .end local v8           #arrangeSplited:I
    .end local v18           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v19           #info:Landroid/view/inputmethod/EditorInfo;
    .end local v22           #mode:I
    :cond_6
    const-string v29, "ShowClipboard"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_7

    const-string v29, "ShowClipboardDialog"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 206
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v29

    if-nez v29, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 207
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_0

    .line 209
    :cond_9
    const-string v29, "android.widget.TextView.onCreateContextMenu"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getComposingWindow()Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    move-result-object v11

    .line 212
    .local v11, compsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->isShowing()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 213
    invoke-virtual {v11}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V

    goto/16 :goto_0

    .line 215
    .end local v11           #compsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;
    :cond_a
    const-string v29, "java.com.android.server.InputMethodService.hideInputMethodMenu"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v23

    .line 217
    .local v23, modeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v26

    .line 218
    .local v26, skbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getHWManager()Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    move-result-object v17

    .line 219
    .local v17, hwMgr:Lcom/samsung/inputmethod/handwriting/SimeHWManager;
    if-eqz v23, :cond_0

    if-eqz v17, :cond_0

    if-eqz v26, :cond_0

    .line 222
    invoke-virtual/range {v23 .. v23}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v29

    if-eqz v29, :cond_0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isShown()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 223
    const/16 v29, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWView(Z)V

    goto/16 :goto_0

    .line 225
    .end local v17           #hwMgr:Lcom/samsung/inputmethod/handwriting/SimeHWManager;
    .end local v23           #modeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    .end local v26           #skbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    :cond_b
    const-string v29, "samsungimehideview"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    goto/16 :goto_0

    .line 228
    :cond_c
    const-string v29, "com.android.phone.ACTION_NEW_INCOMING_CALL"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    goto/16 :goto_0

    .line 230
    :cond_d
    const-string v29, "com.samsung.inputmethod.RequestLanguageInfo"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 232
    const/4 v12, 0x0

    .line 233
    .local v12, defaultLanguage:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v4, SelectedCodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    const-string v30, "Language"

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/samsung/inputmethod/SamsungIME;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 237
    .local v24, pref:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->imIsHKTWModel()Z

    move-result v29

    if-eqz v29, :cond_f

    .line 239
    const-string v29, "Language4"

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v30

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 241
    .local v28, tw_check:Ljava/lang/Boolean;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    .line 242
    const-string v10, "zh_TW"

    .line 243
    .local v10, code:Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v10           #code:Ljava/lang/String;
    :cond_e
    const-string v29, "Language5"

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v30

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 248
    .local v16, hk_check:Ljava/lang/Boolean;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    .line 249
    const-string v10, "zh_HK"

    .line 250
    .restart local v10       #code:Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v10           #code:Ljava/lang/String;
    .end local v16           #hk_check:Ljava/lang/Boolean;
    .end local v28           #tw_check:Ljava/lang/Boolean;
    :cond_f
    const-string v29, "Language1"

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v30

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 256
    .local v9, chn_check:Ljava/lang/Boolean;
    const-string v29, "Language2"

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v30

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 257
    .local v21, kor_check:Ljava/lang/Boolean;
    const-string v29, "Language3"

    const/16 v30, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 259
    .local v14, eng_check:Ljava/lang/Boolean;
    const-string v29, "%s_%s"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string v32, "en"

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const-string v32, "US"

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 261
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_10

    .line 263
    const-string v10, "zh_CN"

    .line 264
    .restart local v10       #code:Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v10           #code:Ljava/lang/String;
    :cond_10
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    .line 268
    const-string v10, "ko"

    .line 269
    .restart local v10       #code:Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v10           #code:Ljava/lang/String;
    :cond_11
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    .line 273
    const-string v10, "en_US"

    .line 274
    .restart local v10       #code:Ljava/lang/String;
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v10           #code:Ljava/lang/String;
    :cond_12
    new-instance v20, Landroid/content/Intent;

    const-string v29, "com.sec.android.gesturepad.Action_InputLan"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v20, intent1:Landroid/content/Intent;
    const-string v29, "defaultLanguage"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v29, "selectedLanguageList"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 280
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    .end local v4           #SelectedCodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #chn_check:Ljava/lang/Boolean;
    .end local v12           #defaultLanguage:Ljava/lang/String;
    .end local v14           #eng_check:Ljava/lang/Boolean;
    .end local v20           #intent1:Landroid/content/Intent;
    .end local v21           #kor_check:Ljava/lang/Boolean;
    .end local v24           #pref:Landroid/content/SharedPreferences;
    :cond_13
    const-string v29, "com.samsung.inputmethod.internal.message"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 285
    const-string v29, "SamsungIME_intent_msg"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "swiftkey_update_lang"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v29

    if-eqz v29, :cond_0

    sget-boolean v29, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SWIFTKEY_ENGINE_FEATURE:Z

    if-eqz v29, :cond_0

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->reLoadSwiftKeyLanguage()V

    goto/16 :goto_0

    .line 291
    :cond_14
    const-string v29, "android.intent.action.DOCK_EVENT"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 296
    const-string v29, "android.intent.extra.DOCK_STATE"

    const/16 v30, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 297
    .local v27, state:I
    const/16 v29, 0x9

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_15

    .line 299
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->setHWKeyboardConnection(Z)V

    goto/16 :goto_0

    .line 300
    :cond_15
    if-nez v27, :cond_0

    .line 302
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->setHWKeyboardConnection(Z)V

    goto/16 :goto_0

    .line 305
    .end local v27           #state:I
    :cond_16
    const-string v29, "android.intent.action.USBHID_KEYBOARD_EVENT"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_18

    .line 310
    const-string v29, "android.intent.extra.device_state"

    const/16 v30, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 311
    .restart local v27       #state:I
    const/16 v29, 0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_17

    .line 313
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->setHWKeyboardConnection(Z)V

    goto/16 :goto_0

    .line 314
    :cond_17
    if-nez v27, :cond_0

    .line 316
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->setHWKeyboardConnection(Z)V

    goto/16 :goto_0

    .line 319
    .end local v27           #state:I
    :cond_18
    const-string v29, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1c

    .line 324
    const-string v29, "android.bluetooth.profile.extra.STATE"

    const/16 v30, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 325
    .restart local v27       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->isBTPeripheralConnected(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_1a

    const/16 v29, 0x2

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_19

    const/16 v29, 0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_1a

    .line 328
    :cond_19
    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->setHWKeyboardConnection(Z)V

    goto/16 :goto_0

    .line 329
    :cond_1a
    if-eqz v27, :cond_1b

    const/16 v29, 0x3

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 331
    :cond_1b
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->setHWKeyboardConnection(Z)V

    goto/16 :goto_0

    .line 333
    .end local v27           #state:I
    :cond_1c
    const-string v29, "com.sec.android.app.ocr.OCR_SIP_TEXT"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimIntentProcessor$IntentReceiver;->this$0:Lcom/samsung/inputmethod/SimIntentProcessor;

    move-object/from16 v29, v0

    #getter for: Lcom/samsung/inputmethod/SimIntentProcessor;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static/range {v29 .. v29}, Lcom/samsung/inputmethod/SimIntentProcessor;->access$000(Lcom/samsung/inputmethod/SimIntentProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/SamsungIME;->getOCRProcessor()Lcom/samsung/inputmethod/SimeOCR;

    move-result-object v3

    .line 337
    .local v3, OCR:Lcom/samsung/inputmethod/SimeOCR;
    if-eqz v3, :cond_0

    .line 340
    const-string v29, "OCR_SIP_TEXT"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/samsung/inputmethod/SimeOCR;->setOcrString(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeOCR;->sendMessage()V

    .line 342
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/samsung/inputmethod/SimeOCR;->setGetOcrString(Z)V

    goto/16 :goto_0
.end method
