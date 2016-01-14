//
//  ViewController.swift
//  Gainz
//
//  Created by Deniz Tolga Turgut on 4/30/15.
//  Copyright (c) 2015 Deniz Tolga Turgut. All rights reserved.
//

//here by default
import UIKit

//class name and extends UIViewController because this class represents the screen object in storyboard called a UIViewController object
class ViewController: UIViewController
{
	///Declare variables here like java
	var questions: [String]!
	var answers: [String]!
	var currentQuestionIndex = 0
	@IBOutlet weak var showQuestionButton: UIButton!
	@IBOutlet weak var questionLabel: UILabel!
	@IBOutlet weak var showAnswerButton: UIButton!
	@IBOutlet weak var answerLabel: UILabel!
	
	//main method like java
	override func viewDidLoad()
	{
		super.viewDidLoad()
		
		questions = ["What's my name?", "How much gains do i make??", "number of piaos?"]
		
		answers = ["DinoSour", "all kindz", "6272819"]
		
	}

	//fuck this method
	override func didReceiveMemoryWarning()
	{
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	//when you press question button
	@IBAction func showQuestionButtonTapped(sender: AnyObject)
	{
		// Step to the next question
		currentQuestionIndex++;
		
		// Am I past the last question?
		if currentQuestionIndex == questions.count
		{
			// Go back to the first question
			currentQuestionIndex = 0
		}
		
		// Get the string at that index in the questions array
		let question = questions[currentQuestionIndex]
		
		// Display the string in the question label
		questionLabel.text = question
		
		// Reset the answer label
		answerLabel.text = "???"
	}
	
	//when you press answer button
	@IBAction func showAnswerButtonTapped(sender: AnyObject)
	{
		if answerLabel.text == "???"
		{
			let answer = answers[currentQuestionIndex]
			self.answerLabel.text = answer
		}
	}

}

