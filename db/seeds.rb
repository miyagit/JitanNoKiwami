# category_quiz_questionsテーブルのデータ追加

questions = [
  { category_id: 1, content: "コピーのショートカットを選択してください。" },
  { category_id: 1, content: "貼り付けのショートカットを選択してください。" },
  { category_id: 1, content: "切り取りのショートカットを選択してください。" },
  { category_id: 1, content: "全選択のショートカットを選択してください。" },
  { category_id: 1, content: "操作を元に戻すショートカットを選択してください。" },
  { category_id: 1, content: "ファイルを保存するショートカットを選択してください。" },
  { category_id: 1, content: "ファイルを印刷するショートカットを選択してください。" },
  { category_id: 1, content: "設定画面を開くのショートカットを選択してください。" },
  { category_id: 1, content: "新規エクスプローラーを開くショートカットを選択してください。" },
  { category_id: 1, content: "アクティブなエクスプローラーを複製するショートカットを選択してください。" },
  { category_id: 1, content: "新規フォルダを作成するショートカットを選択してください。" },
  { category_id: 1, content: "1つ上の階層のフォルダに移動するショートカットを選択してください。" },
  { category_id: 1, content: "前のフォルダーに戻るショートカットを選択してください。" },
  { category_id: 1, content: "右クリックメニューを表示するショートカットを選択してください。" },
  { category_id: 1, content: "1つ前のウィンドウを表示するショートカットを選択してください。" },
  { category_id: 1, content: "起動中のアプリケーション一覧を表示するショートカットを選択してください。" },
  { category_id: 1, content: "スタートメニューを表示するショートカットを選択してください。" },
  { category_id: 1, content: "デスクトップを表示するショートカットを選択してください。" },
  { category_id: 1, content: "クリップボードの履歴を表示するショートカットを選択してください。" },
  { category_id: 1, content: "ウィンドウを閉じるショートカットを選択してください。" },
  { category_id: 1, content: "ウィンドウを最大化ショートカットを選択してください。" },
  { category_id: 1, content: "ウィンドウを最小化ショートカットを選択してください。" },
  { category_id: 1, content: "画面をロックするショートカットを選択してください。" },
  { category_id: 1, content: "［ファイル名を指定して実行］を表示するショートカットを選択してください。" },
]

begin
  ActiveRecord::Base.transaction do

    # データの追加処理
    questions.each do |question|
    
      # category_quiz_questionsテーブルの中に存在すれば、データを取得、存在しなければnewのインスタンスを作成
      category_quiz_question = CategoryQuizQuestion.find_or_initialize_by(category_id: question[:category_id], content: question[:content])
    
      # newインスタンスの場合は、category_quiz_questionインスタンスをセーブする
      if category_quiz_question.new_record?
        category_quiz_question.save
      end
      
    end
end

rescue ActiveRecord::RecordInvalid => e
  puts "エラーが発生しました: #{e.record.errors.full_messages}"
end

# --------------------------------------------------------------------------------
# category_question_choicesテーブルのデータ追加

choices = [
  { category_quiz_question_id: 1, content: "Ctrl + C", is_correct: true },
  { category_quiz_question_id: 1, content: "Ctrl + D", is_correct: false },
  { category_quiz_question_id: 1, content: "Ctrl + A", is_correct: false },
  { category_quiz_question_id: 1, content: "Ctrl + F", is_correct: false },
  { category_quiz_question_id: 1, content: "Ctrl + V", is_correct: false },
  { category_quiz_question_id: 1, content: "Ctrl + X", is_correct: false },
  { category_quiz_question_id: 2, content: "Ctrl + V", is_correct: true },
  { category_quiz_question_id: 2, content: "Ctrl + Z", is_correct: false },
  { category_quiz_question_id: 2, content: "Ctrl + B", is_correct: false },
  { category_quiz_question_id: 2, content: "Ctrl + H", is_correct: false },
  { category_quiz_question_id: 2, content: "Ctrl + A", is_correct: false },
  { category_quiz_question_id: 2, content: "Ctrl + D", is_correct: false },
  { category_quiz_question_id: 3, content: "Ctrl + X", is_correct: true },
  { category_quiz_question_id: 3, content: "Ctrl + D", is_correct: false },
  { category_quiz_question_id: 3, content: "Ctrl + S", is_correct: false },
  { category_quiz_question_id: 3, content: "Ctrl + A", is_correct: false },
  { category_quiz_question_id: 3, content: "Ctrl + V", is_correct: false },
  { category_quiz_question_id: 3, content: "Ctrl + K", is_correct: false },
  { category_quiz_question_id: 3, content: "Ctrl + C", is_correct: false },
  { category_quiz_question_id: 4, content: "Ctrl + A", is_correct: true },
  { category_quiz_question_id: 4, content: "Ctrl + Z", is_correct: false },
  { category_quiz_question_id: 4, content: "Ctrl + S", is_correct: false },
  { category_quiz_question_id: 4, content: "Ctrl + W", is_correct: false },
  { category_quiz_question_id: 4, content: "Ctrl + O", is_correct: false },
  { category_quiz_question_id: 4, content: "Ctrl + N", is_correct: false },
  { category_quiz_question_id: 4, content: "Ctrl + M", is_correct: false },
  { category_quiz_question_id: 5, content: "Ctrl + Z", is_correct: true },
  { category_quiz_question_id: 5, content: "Ctrl + S", is_correct: false },
  { category_quiz_question_id: 5, content: "Ctrl + B", is_correct: false },
  { category_quiz_question_id: 5, content: "Ctrl + R", is_correct: false },
  { category_quiz_question_id: 5, content: "Ctrl + Q", is_correct: false },
  { category_quiz_question_id: 5, content: "Ctrl + M", is_correct: false },
  { category_quiz_question_id: 5, content: "Ctrl + I", is_correct: false },
  { category_quiz_question_id: 6, content: "Ctrl + S", is_correct: true },
  { category_quiz_question_id: 6, content: "Ctrl + Z", is_correct: false },
  { category_quiz_question_id: 6, content: "Ctrl + H", is_correct: false },
  { category_quiz_question_id: 6, content: "Ctrl + F", is_correct: false },
  { category_quiz_question_id: 6, content: "Ctrl + C", is_correct: false },
  { category_quiz_question_id: 6, content: "Ctrl + G", is_correct: false },
  { category_quiz_question_id: 6, content: "Ctrl + T", is_correct: false },
  { category_quiz_question_id: 7, content: "Ctrl + P", is_correct: true },
  { category_quiz_question_id: 7, content: "Ctrl + I", is_correct: false },
  { category_quiz_question_id: 7, content: "Ctrl + E", is_correct: false },
  { category_quiz_question_id: 7, content: "Ctrl + Q", is_correct: false },
  { category_quiz_question_id: 7, content: "Ctrl + F", is_correct: false },
  { category_quiz_question_id: 7, content: "Ctrl + L", is_correct: false },
  { category_quiz_question_id: 7, content: "Ctrl + R", is_correct: false },
  { category_quiz_question_id: 8, content: "Windows + I", is_correct: true },
  { category_quiz_question_id: 8, content: "Windows + S", is_correct: false },
  { category_quiz_question_id: 8, content: "Windows + G", is_correct: false },
  { category_quiz_question_id: 8, content: "Windows + T", is_correct: false },
  { category_quiz_question_id: 8, content: "Windows + P", is_correct: false },
  { category_quiz_question_id: 8, content: "Windows + Q", is_correct: false },
  { category_quiz_question_id: 8, content: "Windows + G", is_correct: false },
  { category_quiz_question_id: 9, content: "Windows + E", is_correct: true },
  { category_quiz_question_id: 9, content: "Windows + P", is_correct: false },
  { category_quiz_question_id: 9, content: "Windows + K", is_correct: false },
  { category_quiz_question_id: 9, content: "Windows + L", is_correct: false },
  { category_quiz_question_id: 9, content: "Windows + R", is_correct: false },
  { category_quiz_question_id: 9, content: "Windows + O", is_correct: false },
  { category_quiz_question_id: 9, content: "Windows + N", is_correct: false },
  { category_quiz_question_id: 10, content: "Ctrl + N", is_correct: true },
  { category_quiz_question_id: 10, content: "Ctrl + M", is_correct: false },
  { category_quiz_question_id: 10, content: "Ctrl + A", is_correct: false },
  { category_quiz_question_id: 10, content: "Ctrl + E", is_correct: false },
  { category_quiz_question_id: 10, content: "Ctrl + F", is_correct: false },
  { category_quiz_question_id: 10, content: "Windows + N", is_correct: false },
  { category_quiz_question_id: 10, content: "Windows + E", is_correct: false },
  { category_quiz_question_id: 11, content: "Ctrl + Shift + N", is_correct: true },
  { category_quiz_question_id: 11, content: "Ctrl + Shift + F", is_correct: false },
  { category_quiz_question_id: 11, content: "Ctrl + Shift + A", is_correct: false },
  { category_quiz_question_id: 11, content: "Ctrl + Shift + G", is_correct: false },
  { category_quiz_question_id: 11, content: "Ctrl + Shift + E", is_correct: false },
  { category_quiz_question_id: 11, content: "Ctrl + Shift + M", is_correct: false },
  { category_quiz_question_id: 11, content: "Ctrl + Shift + O", is_correct: false },
  { category_quiz_question_id: 12, content: "Alt + ↑", is_correct: true },
  { category_quiz_question_id: 12, content: "Alt + ←", is_correct: false },
  { category_quiz_question_id: 12, content: "Ctrl + ↑", is_correct: false },
  { category_quiz_question_id: 12, content: "Windows + ↑", is_correct: false },
  { category_quiz_question_id: 12, content: "Ctrl + ←", is_correct: false },
  { category_quiz_question_id: 12, content: "Windows + ←", is_correct: false },
  { category_quiz_question_id: 12, content: "Ctrl + Alt + ↑", is_correct: false },
  { category_quiz_question_id: 13, content: "Alt + ←", is_correct: true },
  { category_quiz_question_id: 13, content: "Alt + ↑", is_correct: false },
  { category_quiz_question_id: 13, content: "Windows + ↑", is_correct: false },
  { category_quiz_question_id: 13, content: "Windows + ←", is_correct: false },
  { category_quiz_question_id: 13, content: "Ctrl + ↑", is_correct: false },
  { category_quiz_question_id: 13, content: "Ctrl + ←", is_correct: false },
  { category_quiz_question_id: 13, content: "Ctrl + Alt + ←", is_correct: false },
  { category_quiz_question_id: 14, content: "Shift + F10", is_correct: true },
  { category_quiz_question_id: 14, content: "Shift + F11", is_correct: false },
  { category_quiz_question_id: 14, content: "Shift + F12", is_correct: false },
  { category_quiz_question_id: 14, content: "Shift + F1", is_correct: false },
  { category_quiz_question_id: 14, content: "Shift + F2", is_correct: false },
  { category_quiz_question_id: 14, content: "Shift + F8", is_correct: false },
  { category_quiz_question_id: 14, content: "Shift + F9", is_correct: false },
  { category_quiz_question_id: 15, content: "Alt + Tab", is_correct: true },
  { category_quiz_question_id: 15, content: "Windows + Tab", is_correct: false },
  { category_quiz_question_id: 15, content: "Ctrl + Tab", is_correct: false },
  { category_quiz_question_id: 15, content: "Alt + R", is_correct: false },
  { category_quiz_question_id: 15, content: "Windows + R", is_correct: false },
  { category_quiz_question_id: 15, content: "Ctrl + R", is_correct: false },
  { category_quiz_question_id: 15, content: "Shift + Tab", is_correct: false },
  { category_quiz_question_id: 16, content: "Windows + Tab", is_correct: true },
  { category_quiz_question_id: 16, content: "Alt + Tab", is_correct: false },
  { category_quiz_question_id: 16, content: "Ctrl + Tab", is_correct: false },
  { category_quiz_question_id: 16, content: "Alt + A", is_correct: false },
  { category_quiz_question_id: 16, content: "Windows + A", is_correct: false },
  { category_quiz_question_id: 16, content: "Ctrl + A", is_correct: false },
  { category_quiz_question_id: 16, content: "Shift + A", is_correct: false },
  { category_quiz_question_id: 17, content: "Windows", is_correct: true },
  { category_quiz_question_id: 17, content: "Windows + S", is_correct: false },
  { category_quiz_question_id: 17, content: "Windows + M", is_correct: false },
  { category_quiz_question_id: 17, content: "Ctrl + S", is_correct: false },
  { category_quiz_question_id: 17, content: "Ctrl + M", is_correct: false },
  { category_quiz_question_id: 17, content: "Shift + S", is_correct: false },
  { category_quiz_question_id: 17, content: "esc", is_correct: false },
  { category_quiz_question_id: 18, content: "Windows + D", is_correct: true },
  { category_quiz_question_id: 18, content: "Windows + T", is_correct: false },
  { category_quiz_question_id: 18, content: "Windows + P", is_correct: false },
  { category_quiz_question_id: 18, content: "Ctrl + D", is_correct: false },
  { category_quiz_question_id: 18, content: "Ctrl + T", is_correct: false },
  { category_quiz_question_id: 18, content: "Ctrl + P", is_correct: false },
  { category_quiz_question_id: 19, content: "Windows + V", is_correct: true },
  { category_quiz_question_id: 19, content: "Ctrl + V", is_correct: false },
  { category_quiz_question_id: 19, content: "Windows + C", is_correct: false },
  { category_quiz_question_id: 19, content: "Ctrl + C", is_correct: false },
  { category_quiz_question_id: 19, content: "Windows + L", is_correct: false },
  { category_quiz_question_id: 19, content: "Ctrl + L", is_correct: false },
  { category_quiz_question_id: 19, content: "Ctrl + Shift + V", is_correct: false },
  { category_quiz_question_id: 20, content: "Alt + F4", is_correct: true },
  { category_quiz_question_id: 20, content: "Windows + F4", is_correct: false },
  { category_quiz_question_id: 20, content: "Ctrl + F4", is_correct: false },
  { category_quiz_question_id: 20, content: "Shift + F4", is_correct: false },
  { category_quiz_question_id: 20, content: "Alt + F1", is_correct: false },
  { category_quiz_question_id: 20, content: "Alt + F2", is_correct: false },
  { category_quiz_question_id: 20, content: "Alt + F3", is_correct: false },
  { category_quiz_question_id: 21, content: "Windows + ↑", is_correct: true },
  { category_quiz_question_id: 21, content: "Windows + ←", is_correct: false },
  { category_quiz_question_id: 21, content: "Ctrl + ↑", is_correct: false },
  { category_quiz_question_id: 21, content: "Ctrl + ←", is_correct: false },
  { category_quiz_question_id: 21, content: "Windows + M", is_correct: false },
  { category_quiz_question_id: 21, content: "Windows + L", is_correct: false },
  { category_quiz_question_id: 21, content: "Windows + S", is_correct: false },
  { category_quiz_question_id: 22, content: "Windows + ↓", is_correct: true },
  { category_quiz_question_id: 22, content: "Windows + ←", is_correct: false },
  { category_quiz_question_id: 22, content: "Ctrl + ↓", is_correct: false },
  { category_quiz_question_id: 22, content: "Ctrl + ←", is_correct: false },
  { category_quiz_question_id: 22, content: "Windows + M", is_correct: false },
  { category_quiz_question_id: 22, content: "Windows + L", is_correct: false },
  { category_quiz_question_id: 22, content: "Windows + S", is_correct: false },
  { category_quiz_question_id: 23, content: "Windows + L", is_correct: true },
  { category_quiz_question_id: 23, content: "Ctrl + L", is_correct: false },
  { category_quiz_question_id: 23, content: "Windows + R", is_correct: false },
  { category_quiz_question_id: 23, content: "Ctrl + R", is_correct: false },
  { category_quiz_question_id: 23, content: "Shift + L", is_correct: false },
  { category_quiz_question_id: 23, content: "Shift + R", is_correct: false },
  { category_quiz_question_id: 23, content: "Windows + Shift + L", is_correct: false },
  { category_quiz_question_id: 24, content: "Windows + R", is_correct: true },
  { category_quiz_question_id: 24, content: "Windows + F", is_correct: false },
  { category_quiz_question_id: 24, content: "Windows + E", is_correct: false },
  { category_quiz_question_id: 24, content: "Windows + D", is_correct: false },
  { category_quiz_question_id: 24, content: "Ctrl + R", is_correct: false },
  { category_quiz_question_id: 24, content: "Ctrl + F", is_correct: false },
  { category_quiz_question_id: 24, content: "Ctrl + E", is_correct: false },
]

begin
  ActiveRecord::Base.transaction do

    # データの追加処理
    choices.each do |choice|
    
      # category_quiz_questionsテーブルの中に存在すれば、データを取得、存在しなければnewのインスタンスを作成
      category_question_choice = CategoryQuestionChoice.find_or_initialize_by(category_quiz_question_id: choice[:category_quiz_question_id], content: choice[:content], is_correct: choice[:is_correct])
    
      # newインスタンスの場合は、category_quiz_questionインスタンスをセーブする
      if category_question_choice.new_record?
        category_question_choice.save
      end
      
    end
end

rescue ActiveRecord::RecordInvalid => e
  puts "エラーが発生しました: #{e.record.errors.full_messages}"
end
